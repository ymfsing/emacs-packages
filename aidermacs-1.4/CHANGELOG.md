# CHANGELOG

# Aidermacs 1.3

## What's Changed
* Fix the part about the "AI" comments in the README.md by @Martinsos in https://github.com/MatthewZMD/aidermacs/pull/106
* aidermacs--form-prompt: Always use prompt-prefix and context. by @thanhvg in https://github.com/MatthewZMD/aidermacs/pull/108
* Use `display-warning` when warning user about font-lock position by @benthamite in https://github.com/MatthewZMD/aidermacs/pull/113
* Fix aidermacs typos by @Dima-369 in https://github.com/MatthewZMD/aidermacs/pull/114
* feat: add web content fetching function to aidermacs by @ArthurHeymans in https://github.com/MatthewZMD/aidermacs/pull/115
* feat: add auto-commit command to Magit transient menu by @ArthurHeymans in https://github.com/MatthewZMD/aidermacs/pull/116
* Change syntax highlighting to use a state based approach by @CeleritasCelery in https://github.com/MatthewZMD/aidermacs/pull/118
* Add markdown formatting to the aider session by @CeleritasCelery in https://github.com/MatthewZMD/aidermacs/pull/119

## New Contributors
* @Martinsos made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/106
* @thanhvg made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/108
* @benthamite made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/113
* @Dima-369 made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/114

**Full Changelog**: https://github.com/MatthewZMD/aidermacs/compare/v1.2...v1.3

# Aidermacs 1.2

## What's Changed
* Use uv install aider. by @manateelazycat in https://github.com/MatthewZMD/aidermacs/pull/89
* Doc : fix uv aider proxy error by @ymfsing in https://github.com/MatthewZMD/aidermacs/pull/90
* Fix model inheritance to dynamically use default model values by @u-yuta in https://github.com/MatthewZMD/aidermacs/pull/91
* Handle errors in insert hooks by @CeleritasCelery in https://github.com/MatthewZMD/aidermacs/pull/95
* readme: add spacemacs example by @paralin in https://github.com/MatthewZMD/aidermacs/pull/100
* readme: add back steps 4 and 5 to getting started by @paralin in https://github.com/MatthewZMD/aidermacs/pull/101

## New Contributors
* @manateelazycat made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/89
* @ymfsing made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/90
* @paralin made their first contribution in https://github.com/MatthewZMD/aidermacs/pull/100

# Aidermacs 1.1

**What's New in Aidermacs 1.1?**

* **New Features:**
  * Added common prompts system with history
  * Better support for architect/editor model separation
  * Improved theme support for vterm backend
  * Added model name transformation for API providers

* **Enhanced Model Management:**
  * Added support for weak models for commit messages and chat summarization
  * Improved model selection with prefix arguments for weak model changes
  * Better handling of model inheritance and initialization
  * Added model version checking and caching

* **Output Handling Improvements:**
  * New output module with better file tracking and parsing
  * Improved ediff integration with proper cleanup hooks
  * Better handling of read-only files and remote paths
  * Enhanced output history management

* **Performance Enhancements:**
  * Added protection against infinite font-lock loops
  * Better handling of large output blocks
  * Improved buffer management and cleanup

* **Bug Fixes:**
  * Fixed file path handling in drop commands
  * Improved error handling in model fetching
  * Better handling of process output filtering
  * Fixed issues with buffer naming and selection

**Breaking Changes:**
* Minimum Emacs version requirement changed to 26.1
* Some internal APIs have been reorganized
* Model selection behavior has changed for architect mode

**Upgrade Instructions:**
1. Update your Emacs to at least version 26.1
2. Review your model configuration settings
3. Check for any customizations that may need updating
4. Clear any cached model lists if experiencing issues


# Aidermacs 1.0

**What's New in Aidermacs 1.0?**

Aidermacs 1.0 delivers a range of features designed to enhance your productivity and coding experience:

* **Package Repositories:**
  *   **MELPA:** Install directly from MELPA using `M-x package-install RET aidermacs RET`.
  *   **Non-GNU ELPA:** Also available on Non-GNU ELPA.
*   **Built-in Ediff Integration:** Review AI-generated changes with Emacs' familiar `ediff` interface, allowing you to easily accept or reject modifications.
*   **Intelligent Model Selection:** Automatically discover and integrate with multiple AI providers (OpenAI, Anthropic, DeepSeek, Google Gemini, OpenRouter), ensuring compatibility and optimal performance.
*   **Flexible Terminal Backend Support:** Choose between `comint` and `vterm` backends for the best terminal compatibility and performance.
*   **Enhanced File Management:** Easily manage files within your Aider session with commands for adding, dropping, listing, and more. Full support for remote files via Tramp (SSH, Docker, etc.).
*   **Streamlined Transient Menu Selection:** Access all Aidermacs features through a redesigned and ergonomic transient menu system.
*   **Prompt Files Minor Mode:** Work seamlessly with prompt files and other Aider-related files with convenient keybindings and automatic mode activation.
*   **Claude 3.7 Sonnet Thinking Tokens:** Enable and configure thinking tokens using the `/think-tokens` in-chat command or the `--thinking-tokens` command-line argument.
*   **Architect Mode Confirmation:** Control whether to automatically accept Architect mode changes with the `aidermacs-auto-accept-architect` variable.
*   **Re-Enable Auto-Commits:** Aider automatically commits AI-generated changes by default. We consider this behavior *very* intrusive, so we've disabled it. You can re-enable auto-commits by setting `aidermacs-auto-commits` to `t`.
*   **Customizing Aider Options with `aidermacs-extra-args`:** Pass any Aider-supported command-line options.
