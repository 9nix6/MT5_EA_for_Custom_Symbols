# AGENTS.md — MT5 EA for Custom Symbols

Companion files to one video (https://youtu.be/6enDiP_6v-4): how to modify a stock MT5 EA so it
trades the real symbol while attached to a custom-symbol chart. **Teaching material, not a
product.** Nothing here is shipped by an installer and nothing here is shared with the SDK repos.

## What is where

| Path | What it is |
|---|---|
| `MQL5/Experts/Examples/Moving Average/Moving Average.mq5` | MetaQuotes' stock EA, the "before". **Keep it verbatim** — the video diffs against it. |
| `MQL5/Experts/Examples/Custom Symbols/Moving Average.mq5` | the same original again, as the working copy's starting point |
| `MQL5/Experts/Examples/Custom Symbols/Moving Average Mod.mq5` | the "after": signals from the custom symbol, orders to the tradable symbol |
| `MQL5/Experts/Examples/Custom Symbols/Moving Average Trade Tracker.mq5` | "after" + Trade Tracker library calls |
| `MQL5/Include/CodeSnippet.mqh` | `GetTradableSymbol()`, `IsCustomSymbolDataSeriesReady()` |
| `MQL5/Include/Trade_Tracker_for_Custom_Symbols.mqh` | `#import` declarations for a **closed-source, separately sold** `.ex5` library |

## Things that are not obvious

- **The Trade Tracker library is not here and must not be added.** The header only declares its
  functions. The EA compiles without the library; it fails at load time on a terminal that does
  not have it in `MQL5\Libraries`.
- **Layout differs from the SDK repos**: sources sit under a top-level `MQL5/` folder, so
  `tools/check_includes.py` resolves `<...>` against `MQL5/Include/`.
- **CI stages the EAs under `MQL5\Experts\_CustomSymbolsRepo\`** in the runner's terminal, not at
  their own paths, because a stock terminal already ships `Experts\Examples\Moving Average`.
- Sources are UTF-8 with a BOM, sources only (no `.ex5`), warnings fail the build — same rules as
  `9nix6/Median-and-Turbo-Renko-indicator-bundle`, whose `tools/` and workflow these are cut from.
- Default branch is `main` (the SDK repos use `master`).
- The compile job needs a runner registered for this repo on the Windows VM with the `mql` label.
