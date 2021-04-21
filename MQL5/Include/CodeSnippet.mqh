string GetTradableSymbol()
{
   string tempSymbol;
   long tempResult;
   
   if(SymbolInfoInteger(_Symbol, SYMBOL_CUSTOM, tempResult) == false)
   {
      Print("Error getting info for "+_Symbol+": "+(string)GetLastError());
      return "";   
   }
   
   if((bool)tempResult == false)
      return _Symbol;
   
   if(SymbolInfoString(_Symbol, SYMBOL_ISIN, tempSymbol) == false)
   {
      Print("Error getting info for "+_Symbol+": "+(string)GetLastError());
      return "";
   }
   
   return tempSymbol;
}

bool IsCustomSymbolDataSeriesReady()
{
   if(iTime(_Symbol,_Period,0) == 0)
      return false;
   
   return true;
}
