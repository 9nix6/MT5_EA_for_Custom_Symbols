# MT5 EA for Custom Symbols
Files for the video explainig the process of modifying a standard EA for trading on MT5 custom symbols.

[![Explainer video](http://img.youtube.com/vi/6enDiP_6v-4/0.jpg)](https://youtu.be/6enDiP_6v-4)

## MQL5/Experts/Examples/Moving Average 
This folder contains the origianal source code fro the Moving Average exert advisor shipped with MT5 at the moement of making the video.

## MQL5/Experts/Examples/Custom Symbols 
This folder contains the following files:

**Moving Average.mq5** - the origianl EA source code

**Moving Average Mod.mq5** - the EA source code modified in the first part of the video

**Moving Average Trade Tracker.mq5** - the EA source code with calls to the Trade Tracker library added to it

## MQL5/Include 
This folder contains the following files:

**CodeSnippet.mqh** - the code snippet used in the first part of the video. It contain the **GetTradableSymbol()** and **IsCustomSymbolDataSeriesReady()** functions

**Trade_Tracker_for_Custom_Symbols.mqh**  - the header file for the Trade Tracker library available from https://www.mql5.com/en/market/product/65458

