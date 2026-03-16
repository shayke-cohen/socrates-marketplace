<div align="center">

# Socrates

### Learn anything through Socratic dialogue, visual canvas, and gamification.

[![Latest Release](https://img.shields.io/github/v/release/shayke-cohen/socrates-marketplace?label=latest&sort=semver)](https://github.com/shayke-cohen/socrates-marketplace/releases/latest)
[![npm version](https://img.shields.io/npm/v/@shaykec/socrates)](https://www.npmjs.com/package/@shaykec/socrates)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

**Stop reading docs. Start thinking.**
Socrates is an AI teaching platform that asks *you* questions, guides you to discover answers yourself, and tracks your progress with a belt-rank gamification system -- from White Belt to Black Belt 5th Dan.

[Download Desktop App](#-download) · [Install CLI](#-command-line) · [Module Marketplace](#-module-marketplace)

---

</div>

## Why Socrates?

Most learning tools give you answers. Socrates makes you **find them yourself** -- through guided questions, hands-on tasks, and real-time feedback. It's the difference between watching someone code and writing the code yourself.

- **You write all the code.** The AI never writes it for you.
- **You answer the questions.** The AI checks your understanding at every step.
- **You earn your belt.** Progress is real -- XP, streaks, and belt promotions you actually worked for.

---

## Features

### Socratic Teaching
The AI asks questions instead of lecturing. Each lesson is a guided dialogue where you discover concepts through hands-on tasks. The AI validates your understanding at checkpoints before moving forward.

### Visual Canvas
Lessons come alive with browser-based visuals -- animated Mermaid diagrams, interactive quizzes (drag-to-order, matching, fill-in-the-blank, timed challenges), a code playground with Monaco editor, and a progress dashboard.

### Gamification
A belt system inspired by martial arts tracks your journey:

| | Belt | XP |
|---|---|---|
| &#x2B1C; | White | 0 |
| &#x1F7E8; | Yellow | 50 |
| &#x1F7E9; | Green | 150 |
| &#x1F7E6; | Blue | 400 |
| &#x1F7EA; | Purple | 800 |
| &#x1F7EB; | Brown | 1,500 |
| &#x2B1B; | Black | 3,000+ |

Black Belt has 5 dan levels up to 48,000 XP.

### Module Marketplace
Install community modules from any git repo. Three modules ship built-in (Git, Claude Code Hooks, A Day with Claude Code), and you can author and share your own with guided tooling.

### Chrome Extension
Highlight text on any webpage, right-click "Teach me this", and start a Socratic lesson. The extension also detects when you're browsing docs related to an installed module and offers to teach you.

---

<div align="center">

## Download

</div>

### Desktop App

The standalone desktop app includes everything -- no terminal setup required. Native menus, system tray, notifications, and auto-updates.

| Platform | Asset | Notes |
|----------|-------|-------|
| **macOS** | `Socrates-0.1.2-arm64.dmg` | Apple Silicon (arm64) |
| **Windows** | Coming soon | |
| **Linux** | Coming soon | |

**[Download from GitHub Releases](https://github.com/shayke-cohen/socrates-marketplace/releases/latest)**

**macOS via Homebrew:**

```bash
brew install --cask socrates
```

### Command Line

Install the CLI globally and use it anywhere:

```bash
npm install -g @shaykec/socrates
```

Or try it instantly without installing:

```bash
npx @shaykec/socrates list
npx @shaykec/socrates stats
```

### Claude Code Plugin

If you use Claude Code, Socrates runs directly inside your terminal as a plugin:

```
/teach git                 # Start a Socratic lesson on Git
/teach:stats               # See your XP and belt
/teach:canvas              # Open the visual canvas
/teach:learn kubernetes    # Auto-generate a module on any topic
```

---

## How It Works

**1. Pick a topic** -- Choose from built-in modules, install community packs, or type any topic and Socrates generates a module on the fly.

**2. Learn through dialogue** -- The AI asks you questions, gives you tasks to complete in your terminal, and checks your understanding at every step.

**3. Earn your belt** -- Complete walkthroughs, exercises, and quizzes to earn XP. Watch your belt change color as you level up.

```
AI:  "What do you think happens when you run `git branch feature`?"
You: "It creates a new pointer to the current commit?"
AI:  "Exactly. Now let's see if you can put the merge steps in order..."
     [Interactive quiz appears in the canvas]
```

---

## Module Marketplace

This repo also serves as the **module pack registry** for Socrates. Community-created learning modules are listed here for discovery.

### Installing Modules

```bash
socrates search docker           # Search the registry
socrates install user/my-pack    # Install a pack from GitHub
socrates packs                   # List installed packs
```

### Submitting a Module Pack

1. Create a module pack following the [authoring guide](https://github.com/shayke-cohen/Socrates#tutorial-creating-learning-modules)
2. Host it in a public git repo
3. Fork this registry
4. Add a YAML file in `packs/` describing your pack:

```yaml
name: your-pack-name
repo: https://github.com/you/your-pack
author: Your Name
description: What your modules teach
tags: [topic1, topic2, topic3]
modules: 3
difficulty: [beginner, intermediate]
```

5. Submit a PR

### Using a Custom Registry

Organizations can host their own private registries:

```bash
socrates registry add https://github.com/myorg/our-registry
```

---

## Architecture

Socrates works across three tiers that degrade gracefully -- if you only have a terminal, everything still works:

```
Desktop App (Electron)               -- Full experience as a native app
    |
Claude Code (Terminal)               -- Socratic dialogue + progress tracking
    |
    |  JSON commands via local HTTP
    v
Bridge Server (port 3456)            -- Routes events between tiers
    |
    +---> Visual Canvas (Browser)    -- Diagrams, quizzes, dashboard
    +---> Chrome Extension           -- Web capture, context suggestions
```

---

## Build from Source

```bash
git clone https://github.com/shayke-cohen/Socrates.git
cd Socrates
npm install

npm run desktop       # Build canvas + launch desktop app
# or
npm run dev           # Start bridge + canvas dev server
```

---

<div align="center">

**[Source Code](https://github.com/shayke-cohen/Socrates)** · **[License (MIT)](LICENSE)**

Made with the Socratic method -- because the best way to learn is to be asked the right questions.

</div>
