import { useEffect, useState } from "react";
import { formatCode } from "../shared/code";
import type { Account as AccountData } from "../shared/types";
import { deleteProgress, getAccount, getCode, switchCode } from "./api";

// Set once the user has copied, shared or confirmed saving their code; hides the home reminder.
const SAVED_KEY = "hippoqcm.codeSaved";
export const STUDIED_KEY = "hippoqcm.studied";

function flag(key: string): boolean {
  try {
    return localStorage.getItem(key) === "1";
  } catch {
    return false;
  }
}
function setFlag(key: string) {
  try {
    localStorage.setItem(key, "1");
  } catch {}
}

/** Whether to nag about saving the sync code: there's progress to lose and it hasn't been saved. */
export const needsCodeReminder = () => flag(STUDIED_KEY) && !flag(SAVED_KEY);

const restoreLink = (code: string) => `${location.origin}/#code=${formatCode(code)}`;

type Props = { incoming: string | null; onBack: () => void };

export default function Account({ incoming, onBack }: Props) {
  const [code, setCode] = useState<string | null>(null);
  const [account, setAccount] = useState<AccountData | null | undefined>(undefined); // undefined = loading
  const [notice, setNotice] = useState<string | null>(null);

  useEffect(() => {
    getCode().then(setCode);
    getAccount()
      .then(setAccount)
      .catch(() => setAccount(undefined));
  }, []);

  const saved = (message: string) => {
    setFlag(SAVED_KEY);
    setNotice(message);
  };

  const copy = async (text: string, message: string) => {
    try {
      await navigator.clipboard.writeText(text);
      saved(message);
    } catch {
      setNotice("Couldn't copy. Select the code and copy it by hand.");
    }
  };

  const share = async () => {
    if (!code) return;
    if (navigator.share) {
      try {
        await navigator.share({ title: "My HippoQCM progress", text: "Open to restore my HippoQCM progress", url: restoreLink(code) });
        saved("Shared. Keep that message somewhere safe.");
      } catch {} // dismissed
    } else {
      await copy(restoreLink(code), "Link copied. Paste it somewhere safe, like a note or a message to yourself.");
    }
  };

  const header = (
    <header className="study-header">
      <button className="link" onClick={onBack}>← Decks</button>
      <span className="meta">Save progress</span>
    </header>
  );

  return (
    <main>
      {header}
      <h1>Your progress</h1>

      {incoming && <Restore initial={incoming} prompt />}

      <section className="account-card">
        <p className="meta">Your sync code</p>
        <p className="sync-code">{code ? formatCode(code) : "…"}</p>
        <p className="meta">
          {account === undefined
            ? "Progress is saved on the server under this code."
            : account === null
              ? "No reviews yet. Progress will be saved under this code as soon as you study."
              : `${account.reviews} review${account.reviews === 1 ? "" : "s"} · ${account.cards} question${account.cards === 1 ? "" : "s"} studied, saved under this code.`}
        </p>
        <div className="actions start">
          <button onClick={share} disabled={!code}>Share restore link</button>
          <button className="secondary" onClick={() => code && copy(formatCode(code), "Code copied.")} disabled={!code}>
            Copy code
          </button>
        </div>
        {notice && <p className="ok-note">{notice}</p>}
      </section>

      <h2>How it works</h2>
      <ul className="page-list">
        <li>There's no account to create. Your progress is saved on the server automatically, under this code.</li>
        <li>To study on another phone or computer, open the restore link there, or enter the code below.</li>
        <li>
          <b>Keep the code somewhere safe</b> (a note, a message to yourself, a screenshot). If you clear this browser
          or lose this phone without it, your progress can't be recovered.
        </li>
        <li>Anyone with the code can see and change your progress, so don't post it publicly.</li>
      </ul>

      {!incoming && (
        <>
          <h2>Use a code from another device</h2>
          <Restore initial="" />
        </>
      )}

      <h2>Start over</h2>
      <DeleteProgress />
    </main>
  );
}

function Restore({ initial, prompt = false }: { initial: string; prompt?: boolean }) {
  const [value, setValue] = useState(initial);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const submit = async () => {
    setBusy(true);
    setError(null);
    try {
      await switchCode(value);
      setFlag(SAVED_KEY); // it came from somewhere, so it's saved somewhere
      location.replace("/");
    } catch (e) {
      setError((e as Error).message);
      setBusy(false);
    }
  };

  return (
    <form
      className={prompt ? "account-card restore prompt" : "restore"}
      onSubmit={(e) => {
        e.preventDefault();
        void submit();
      }}
    >
      {prompt && (
        <p>
          <b>Restore progress from this link?</b> This device will switch to that code's progress. The progress
          currently on this device stays saved under its own code.
        </p>
      )}
      <div className="restore-row">
        <input
          className="code-input"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder="XXXX-XXXX-XXXX-XXXX"
          autoCapitalize="characters"
          autoComplete="off"
          autoCorrect="off"
          spellCheck={false}
          aria-label="Sync code"
        />
        <button type="submit" className="primary" disabled={busy || !value.trim()}>
          {busy ? "Checking…" : "Restore"}
        </button>
      </div>
      {error && <p className="error">{error}</p>}
    </form>
  );
}

function DeleteProgress() {
  const [confirming, setConfirming] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  if (!confirming) {
    return (
      <p className="meta">
        Erase every review saved under this code and get a new one.{" "}
        <button className="link danger" onClick={() => setConfirming(true)}>Delete my progress…</button>
      </p>
    );
  }
  return (
    <div className="account-card danger-zone">
      <p><b>Delete all progress saved under this code?</b> This can't be undone, on any device.</p>
      <div className="actions start">
        <button
          className="danger"
          disabled={busy}
          onClick={async () => {
            setBusy(true);
            try {
              await deleteProgress();
              location.replace("/");
            } catch (e) {
              setError((e as Error).message);
              setBusy(false);
            }
          }}
        >
          {busy ? "Deleting…" : "Delete everything"}
        </button>
        <button className="secondary" onClick={() => setConfirming(false)}>Cancel</button>
      </div>
      {error && <p className="error">{error}</p>}
    </div>
  );
}
