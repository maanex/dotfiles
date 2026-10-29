# Dotfiles

## Bash Aliases and Functions

| Name | Example Use Case | Description |
|---|---|---|
| `e` | `e .` | Opens current directory in Nautilus file manager |
| `yarn2` | `yarn2 install` | Runs system Yarn instead of Bun |
| `npm2` | `npm2 install` | Runs system npm instead of Bun |
| `yarn` | `yarn add express` | Runs package management commands via Bun |
| `npm` | `npm run build` | Runs npm commands via Bun |
| `d` | `d` | Starts project development server (`bun dev`) |
| `dd` | `dd` | Runs project with file watch mode (`bun run --watch .`) |
| `r` | `r start` | Runs a named package script with Bun (`bun run <script>`) |
| `portfree` | `portfree 3000` | Frees port 3000 by killing the listening process |
| `v` | `v --port 8080` | Runs Vite via Bun (`bun x vite`) |
| `x` | `x prettier --write .` | Executes npm package binaries via Bun (`bun x`) |
| `q` | `q how to extract a tar.gz file` | Asks Gemini a quick terminal question |
| `py` | `py script.py` | Runs Python 3 |
| `venv` | `venv` | Activates local `.venv` environment |
| `yubi` | `yubi` | Resets SSH keys and adds YubiKey PKCS#11 module |
| `fix-chrome` | `fix-chrome` | Removes Chrome singleton lockfiles after crash |
| `fix-spotify` | `fix-spotify` | Removes Spotify Flatpak lockfiles after crash |
| `fixa` | `fixa` | Clears both Chrome and Spotify singleton lockfiles |
| `edit-compose` | `edit-compose` | Edits system Compose key mappings in nano |
| `logout` | `logout` | Logs out of current GNOME desktop session |
| `o` | `o image.png` | Opens file or URL in default desktop application |
| `gl` | `gl` | Shows full branch history in formatted tree log |
| `gp` | `gp "fix: resolve login bug"` | Stages all changes, commits with message, and pushes |
| `gc` | `gc "wip: draft landing page"` | Stages all changes and commits with message |
| `llmskills` | `llmskills install` | Runs skills CLI for Copilot and Antigravity |
