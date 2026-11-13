# MT5 EA for Custom Symbols

[![MQL Build](https://github.com/9nix6/MT5_EA_for_Custom_Symbols/actions/workflows/mql-build.yml/badge.svg?branch=main)](https://github.com/9nix6/MT5_EA_for_Custom_Symbols/actions/workflows/mql-build.yml)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)

The source files for the video that walks through **modifying a standard MetaTrader 5 Expert
Advisor so it can trade from a custom symbol chart** — a Renko, range bar, tick or seconds chart
built as an MT5 custom symbol.

[![Explainer video](http://img.youtube.com/vi/6enDiP_6v-4/0.jpg)](https://youtu.be/6enDiP_6v-4)

## The problem these files solve

A custom symbol has price history but no broker behind it: an order sent for the custom symbol
goes nowhere. An EA attached to a custom-symbol chart therefore has to read its signals from the
custom symbol and send its orders to the **real, tradable symbol** the chart was built from. The
video shows the edits that takes, using the Moving Average EA that ships with MetaTrader 5 as the
example.

## Requirements

| | |
|---|---|
| Platform | MetaTrader 5 |
| Compiler | MetaEditor (bundled with MT5, Windows only) |
| For `Moving Average Trade Tracker.mq5` only | The *Trade Tracker for Custom Symbols* library, sold on the MQL5 Market |

## Installation

Copy the contents of the `MQL5` folder into the **`MQL5`** sub-folder of your MetaTrader data
folder (*File → Open Data Folder* in the terminal), merging it with what is already there, then
compile the EAs in MetaEditor (**F7**).

The repository holds sources only — no compiled `.ex5` files are committed.

## Repository layout

### `MQL5/Experts/Examples/Moving Average`

| File | Contents |
|---|---|
| `Moving Average.mq5` | The original Moving Average EA as shipped with MT5 when the video was made — the starting point. |

### `MQL5/Experts/Examples/Custom Symbols`

| File | Contents |
|---|---|
| `Moving Average.mq5` | The original EA source, unchanged. |
| `Moving Average Mod.mq5` | The EA as modified in the first part of the video: signals from the custom symbol, orders to the tradable one. |
| `Moving Average Trade Tracker.mq5` | The same EA with calls to the Trade Tracker library added, so positions are also drawn on the custom-symbol chart. |

### `MQL5/Include`

| File | Contents |
|---|---|
| `CodeSnippet.mqh` | The snippet used in the first part of the video: `GetTradableSymbol()` and `IsCustomSymbolDataSeriesReady()`. |
| `Trade_Tracker_for_Custom_Symbols.mqh` | The header for the Trade Tracker library. It only declares the library's functions — the library itself is the purchased `.ex5`, copied from `MQL5\Scripts\Market` to `MQL5\Libraries` as the header's opening comment describes. |

## Building

MetaEditor compiles the sources: press **F7**, or run `metaeditor64.exe /compile:<path>` headless.
There is no macOS or Linux MQL5 compiler.

Continuous integration compiles every EA here on each push and pull request and fails on any error
or warning.

## Related

Custom-symbol charts for MetaTrader 5 are produced by the AZ-INVEST chart generators — see
[az-invest.eu](https://www.az-invest.eu). Each has its own open-source SDK:
[Median & Turbo Renko](https://github.com/9nix6/Median-and-Turbo-Renko-indicator-bundle) ·
[Range Bars](https://github.com/9nix6/Range-Bars-Charting) ·
[Tick & Volume Chart](https://github.com/9nix6/X-Tick-Chart) ·
[Seconds Timeframe Chart](https://github.com/9nix6/Seconds-timeframe-chart).

## License

Released under the [GNU General Public License v3](LICENSE). The Moving Average EA is
© MetaQuotes Software Corp. and carries its own header.

## Disclaimer

The EAs in this repository are provided for educational and informational purposes only, and are
not advice or an invitation to trade. Applying the techniques, ideas and suggestions in these files
and the video is done at the user's sole discretion and risk.
