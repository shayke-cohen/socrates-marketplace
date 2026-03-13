# ClaudeTeach Module Registry

Public registry of learning module packs for [ClaudeTeach](https://github.com/shayke-cohen/ClaudeTeach).

## What is this?

This repo serves as a discovery index for community-created learning modules. When users run `claude-teach search <topic>`, this registry is queried to find relevant module packs.

## Submitting a Module Pack

1. Create a module pack following the [authoring guide](https://github.com/shayke-cohen/ClaudeTeach#tutorial-creating-learning-modules)
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

## Pack Requirements

- Public git repo with a valid `pack.yaml`
- Each module must have at least `module.yaml` and `content.md`
- Run `claude-teach author validate <path>` before submitting
- Content must be original or properly licensed

## Using a Custom Registry

Organizations can host their own private registries:

```bash
claude-teach registry add https://github.com/myorg/our-registry
```

## Structure

```
claudeteach-registry/
  registry.yaml     # Master index (auto-generated from packs/)
  packs/
    pack-name.yaml   # One file per listed pack
```
