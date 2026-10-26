import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import App from "./App";
import { startOffline } from "./api";
import "./styles.css";
import { getTheme, setTheme } from "./ui";

startOffline();
setTheme(getTheme()); // match the status bar to a theme picked in Settings

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <App />
  </StrictMode>,
);
