# git-hooks

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

---

## Introduction

This repo contains a collection of git hooks that can be used to automate certain tasks when working with git.

## Setup

Remove the file extension from the chosen hook and copy it to the `.git/hooks` directory of your project.

Ensure the file is executable by running `chmod +x .git/hooks/<hook-name>`.

## Scripts

#### prepare-commit-msg

This script will prepend the branch name to the commit message.

#### pre-push

This script will prevent pulling or merging the develop branch into either the main or master branches.

---

## License

This repo is licensed under an MIT license. A copy of the license is also provided.

[contributors-shield]: https://img.shields.io/github/contributors/jordandarlington/git-hooks.svg?style=for-the-badge
[contributors-url]: https://github.com/jordandarlington
[forks-shield]: https://img.shields.io/github/forks/jordandarlington/git-hooks.svg?style=for-the-badge
[forks-url]: https://github.com/jordandarlington/git-hooks/network/members
[stars-shield]: https://img.shields.io/github/stars/jordandarlington/git-hooks.svg?style=for-the-badge
[stars-url]: https://github.com/jordandarlington/git-hooks/stargazers
[issues-shield]: https://img.shields.io/github/issues/jordandarlington/git-hooks.svg?style=for-the-badge
[issues-url]: https://github.com/jordandarlington/git-hooks/issues
[license-shield]: https://img.shields.io/github/license/jordandarlington/git-hooks.svg?style=for-the-badge
[license-url]: https://github.com/jordandarlington/git-hooks/blob/main/LICENSE