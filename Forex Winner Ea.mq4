//+------------------------------------------------------------------+
//|                                                    Projet 04.mq4 |
//|                                                  Copyright 2023, |
//|                                                                  |
//+------------------------------------------------------------------+
//--------------------Your Change Start--------------------------------
#property copyright "Copyright © 2023, Forex WINNER EA" // Only change Test Into "Change Text"
#property link      "Forex Winner Ea"// Only change Test Into "Change Text"
#property description"CONTRACT"// Only change Test Into "Change Text"
#property description"Email: Abdulxahad19@gmail.com"// Only change Test Into "Change Text"
#property description""// Only change Test Into "Change Text"
#property description""// Only change Test Into "Change Text"

#property description"This copy will working only run on the following account  REAL# 1002229"// Only change Test Into "Change Text"
#property description "forexearnbdico"
enum priod
  {
   priod1 =PERIOD_M1,//M1
   priod2 = PERIOD_M5,//M5
   priod3 =PERIOD_M15, // M15
   priod4 =PERIOD_M30, // M30
   priod5 =PERIOD_H1, // H1
   priod6 =PERIOD_H4, //H4
   priod7 =PERIOD_D1, //D1
   priod8 =PERIOD_W1,//W1
   priod9 =PERIOD_MN1//MN
   
  };

priod period= priod5; //BUY TIME FRAME 
 
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
extern int Stoploss = 500;            // StopLoss
 extern int TrailStart = 10;
extern int TrailStop = 10;
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
extern double LotExponent = 1.2651;   // Lot Multiplyer e.g 0.1, series: 0.16, 0.26, 0.43 ...
extern bool    DynamicPips                   = true; 
extern int     DefaultPips                   = 12;
extern string _GLUBINA_ = "GLUBINA = number of last bars to calculate volatility";
extern int Glubina = 24;  // number of last bars for calculation of volatility
extern int DEL = 3;
extern int slip = 3;           // how much the price may differ if the DC prompts requotes (the last time a little change the price)
extern double Lots = 0.01;          // LOT SIZE
extern int Equity_per_lot = 10; // EQUITY PER LOT
extern int lotdecimal = 2;          // how many decimal places in the lot count 0 - normal items (1) 1 - mini lots (0.1), 2 - micro (0.01)
extern double TakeProfit = 230.0;    // Number of pips to close the trade
//double PipStep = 30.0;       // Spacing between new trades
double Drop = 5000;
extern double RsiMinimum = 30.0;    // Lower Boundry RSI
extern double RsiMaximum = 70.0;    // Upper Boundry RSI
extern int MagicNumber = 1111111;      // magic number (Advisor uses this to distinguish trades)
extern double PipStep=0;
bool komoles=0;
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
extern int MaxTrades = 17;                 // the maximum number of simultaneously opened orders
extern bool UseEquityStop = FALSE;
extern double TotalEquityRisk = 20.0;
extern bool UseTrailingStop = FALSE;
extern bool UseTimeOut = FALSE;            // use a timeout (to close the treade if they "hang" for too long)
extern double MaxTradeOpenHours = 960.0;    // timeout trade hours (how many hovering close the transaction)
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
//------------------------------------
//int Account_Number =  2096849142;
datetime Date_Time=D'2034.07.19 08:24:00'; //I.E: D'YYYY.MM.DD HH:MM:SS'
//------------------------------------
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

double PriceTarget, StartEquity, BuyTarget, SellTarget;
double AveragePrice, SellLimit, BuyLimit;
double LastBuyPrice, LastSellPrice, Spread;
bool flag;
string EAName="Forex WINNER EA";
datetime timeprev = 0, expiration;
int NumOfTrades = 0;
double iLots,l,ordprof;
int cnt = 0, total;
double Stopper = 0.0;
bool TradeNow = FALSE, LongTrade = FALSE, ShortTrade = FALSE;
int ticket;
bool  NewOrdersPlaced = FALSE;
double AccountEquityHighAmt, PrevEquity;
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
int init() {
   Spread = MarketInfo(Symbol(), MODE_SPREAD) * Point;
   return (0);
}
   
int deinit() {
   return (0);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
int start() 
{  
   /* if (AccountNumber() !=Account_Number)
    {     
     ExpertRemove();
     Alert("Your VPS/PC is not supported, Kindly update VPS!!!");
    } */
    if (TimeCurrent()>Date_Time )
    {
    ExpertRemove();
    Alert("Your VPS Payment is due. Kindly pay your due VPS amount!!!");    
    }
  
   l=MathFloor((AccountEquity()/Equity_per_lot/10000)/MarketInfo(Symbol(),24))*MarketInfo(Symbol(),24);
   Lots=l;
   if (Lots<MarketInfo(Symbol(),23)) Lots=MarketInfo(Symbol(),23);
   if (Lots>MarketInfo(Symbol(),25)) Lots=MarketInfo(Symbol(),25);
   if (DynamicPips) {
      double hival=High[iHighest(NULL,period,MODE_HIGH,Glubina,1)];    // calculate highest and lowest price from last bar to 24 bars ago
      double loval=Low[iLowest(NULL,period,MODE_LOW,Glubina,1)];       // chart used for symbol and time period
      PipStep=NormalizeDouble((hival-loval)/DEL/Point,0);         // calculate pips for spread between orders
      if (PipStep<DefaultPips/DEL) PipStep = NormalizeDouble(DefaultPips/DEL,0);
      if (PipStep>DefaultPips*DEL) PipStep = NormalizeDouble(DefaultPips*DEL,0);          // if dynamic pips fail, assign pips extreme value
   }// else PipStep = DefaultPips;
   //double filtr_MA = iMA(NULL,60,60,0,0,0,0);
   
   double PrevCl;
   double CurrCl;
   if (UseTrailingStop) TrailingAlls(TrailStart, TrailStop, AveragePrice);
   if ((iCCI(NULL,15,55,0,0)>Drop && ShortTrade)||(iCCI(NULL,15,55,0,0)<(-Drop) && LongTrade)) {
         CloseThisSymbolAll();
         Print("Closed All due to TimeOut");     
   }
   if (timeprev == Time[0]) return (0);
   timeprev = Time[0];   
   double CurrentPairProfit = CalculateProfit();
   if (UseEquityStop) {
      if (CurrentPairProfit < 0.0 && MathAbs(CurrentPairProfit) > TotalEquityRisk / 100.0 * AccountEquityHigh()) {
         CloseThisSymbolAll();
         Print("Closed All due to Stop Out");
         NewOrdersPlaced = FALSE;
      }
   }
   total = CountTrades();
   if (total == 0) flag = FALSE;
   for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
      komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
         if (OrderType() == OP_BUY) {
            LongTrade = TRUE;
            ShortTrade = FALSE;
            break;
         }
      }
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
         if (OrderType() == OP_SELL) {
            LongTrade = FALSE;
            ShortTrade = TRUE;
            break;
         }
      }
   }
   if (total > 0 && total <= MaxTrades) {
      RefreshRates();
      LastBuyPrice = FindLastBuyPrice();
      LastSellPrice = FindLastSellPrice();
      if (LongTrade && LastBuyPrice - Ask >= PipStep * Point) TradeNow = TRUE;
      if (ShortTrade && Bid - LastSellPrice >= PipStep * Point) TradeNow = TRUE;
   }
   if (total < 1) {
      ShortTrade = FALSE;
      LongTrade = FALSE;
      TradeNow = TRUE;
      StartEquity = AccountEquity();
   }
   if (TradeNow) {
      LastBuyPrice = FindLastBuyPrice();
      LastSellPrice = FindLastSellPrice();
      if (ShortTrade) {
         NumOfTrades = total;
         iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
         if (iLots<MarketInfo(Symbol(),23)) iLots=MarketInfo(Symbol(),23);
         if (iLots>MarketInfo(Symbol(),25)) iLots=MarketInfo(Symbol(),25);   
         RefreshRates();
         ticket = OpenPendingOrder(1, iLots, Bid, slip, Ask, 0, 0, EAName + "-" + Symbol() +period+ "-" + NumOfTrades+ "-" + PipStep, MagicNumber, 0, HotPink);
         if (ticket < 0) {
            Print("Error: ", GetLastError());
            return (0);
         }
         LastSellPrice = FindLastSellPrice();
         TradeNow = FALSE;
         NewOrdersPlaced = TRUE;
      } else {
         if (LongTrade) {
            NumOfTrades = total;
            iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
            if (iLots<MarketInfo(Symbol(),23)) iLots=MarketInfo(Symbol(),23);
            if (iLots>MarketInfo(Symbol(),25)) iLots=MarketInfo(Symbol(),25);   
            ticket = OpenPendingOrder(0, iLots, Ask, slip, Bid, 0, 0, EAName + "-" + Symbol() + period + "-" +NumOfTrades + "-" +PipStep, MagicNumber, 0, Lime);
            if (ticket < 0) {
               Print("Error: ", GetLastError());
               return (0);
            }
            LastBuyPrice = FindLastBuyPrice();
            TradeNow = FALSE;
            NewOrdersPlaced = TRUE;
         }
      }
   }
   if (TradeNow && total < 1) {
      PrevCl = iClose(Symbol(), period, 2);
      CurrCl = iClose(Symbol(), period, 1);
      SellLimit = Bid;
      BuyLimit = Ask;
      if (!LongTrade) {
         NumOfTrades = total;
         iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
         if (iLots<MarketInfo(Symbol(),23)) iLots=MarketInfo(Symbol(),23);
         if (iLots>MarketInfo(Symbol(),25)) iLots=MarketInfo(Symbol(),25);   
         if (!LongTrade) {
            
                ticket = OpenPendingOrder(0, iLots, BuyLimit, slip, BuyLimit, 0, 0, EAName + "-" + Symbol() +period+  "-" +NumOfTrades, MagicNumber, 0, Lime);
               
               if (ticket < 0) {
                  Print("Error: ", GetLastError());
                  return (0);
               }
               LastBuyPrice = FindLastBuyPrice();
               NewOrdersPlaced = TRUE;
           
         } 
         if (ticket > 0) expiration = datetime(TimeCurrent() + 60.0 * (60.0 * MaxTradeOpenHours));
         TradeNow = FALSE;
      }
   }
   total = CountTrades();
   AveragePrice = 0;
   double Count = 0;
   for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
      komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
         if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
            AveragePrice += OrderOpenPrice() * OrderLots();
            Count += OrderLots();
         }
      }
   }
   if (total > 0) AveragePrice = NormalizeDouble(AveragePrice / Count, Digits);
   if (NewOrdersPlaced) {
      for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
         komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
            if (OrderType() == OP_BUY) {
               PriceTarget = AveragePrice + TakeProfit * Point;
               BuyTarget = PriceTarget;
               Stopper = AveragePrice - Stoploss * Point;
               flag = TRUE;
            }
         }
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
            if (OrderType() == OP_SELL) {
               PriceTarget = AveragePrice - TakeProfit * Point;
               SellTarget = PriceTarget;
               Stopper = AveragePrice + Stoploss * Point;
               flag = TRUE;
            }
         }
      }
   }
   if (NewOrdersPlaced) {
      if (flag == TRUE) {
         for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
            komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
            if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
            if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) 
            komoles=OrderModify(OrderTicket(), NormalizeDouble(AveragePrice,Digits), NormalizeDouble(OrderStopLoss(),Digits), NormalizeDouble(PriceTarget,Digits), 0, Yellow);
            NewOrdersPlaced = FALSE;
         }
      }
   }
   Comment(" Balance = ",AccountBalance(),", Equity = ",AccountEquity(),
   ", Margin = ",AccountMargin(),", Free Margin = ",AccountFreeMargin(),
   ", Total Orders = ",OrdersTotal(),", Lots = ",Lots,",",iLots,", Leverage = ",AccountLeverage(),", Total=", total);
   if (total>MaxTrades) {
      for (int pos = 0; pos<OrdersTotal(); pos++) {
         komoles=OrderSelect(pos, SELECT_BY_POS);
         if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
         if (OrderType() == OP_SELL) {
            komoles=OrderClose(OrderTicket(),OrderLots(),Ask,5,White);
            ordprof = OrderSwap()+OrderProfit()+OrderCommission();  
            if (GetLastError()==0) {
               SendNotification("Closed order: "+Symbol()+", "+IntegerToString(OrderType())+", "+DoubleToStr(Ask,Digits)+", "+DoubleToStr(OrderLots(),2)+", "+DoubleToStr(ordprof,2)); 
            }
            pos=OrdersTotal();
         }
         if (OrderType() == OP_BUY) {
            komoles=OrderClose(OrderTicket(),OrderLots(),Bid,5,White);
            ordprof = OrderSwap()+OrderProfit()+OrderCommission();  
            if (GetLastError()==0) {
               SendNotification("Closed order: "+Symbol()+", "+IntegerToString(OrderType())+", "+DoubleToStr(Ask,Digits)+", "+DoubleToStr(OrderLots(),2)+", "+DoubleToStr(ordprof,2)); 
            }
            pos=OrdersTotal();
         }                      
      }
   }      
   
   return (0);
}
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

int CountTrades() {
   int count = 0;
   for (int trade = OrdersTotal() - 1; trade >= 0; trade--) {
      komoles=OrderSelect(trade, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
      if (OrderType() == OP_SELL || OrderType() == OP_BUY) count++;
   }
   return (count);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

void CloseThisSymbolAll() {
   for (int trade = OrdersTotal() - 1; trade >= 0; trade--) {
      komoles=OrderSelect(trade, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol()) {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
            if (OrderType() == OP_BUY) 
            komoles=OrderClose(OrderTicket(), OrderLots(), Bid, slip, Blue);
            if (OrderType() == OP_SELL) 
            komoles=OrderClose(OrderTicket(), OrderLots(), Ask, slip, Red);
         }
         Sleep(1000);
      }
   }
}

//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

int OpenPendingOrder(int pType, double pLots, double pLevel, int sp, double pr, int sl, int tp, string pComment, int pMagic, int pDatetime, color pColor) {
   int err = 0;
   int c = 0;
   int NumberOfTries = 100;
   switch (pType) {
   case 2:
      for (c = 0; c < NumberOfTries; c++) {
         ticket = OrderSend(Symbol(), OP_BUYLIMIT, pLots, pLevel, sp, StopLong(pr, sl), TakeLong(pLevel, tp), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("pending order: "+Symbol()+", BuyLimit, "+DoubleToStr(pLevel,Digits)+", "+DoubleToStr(pLots,2));
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(1000);
      }
      break;
   case 4:
      for (c = 0; c < NumberOfTries; c++) {
         ticket = OrderSend(Symbol(), OP_BUYSTOP, pLots, pLevel, sp, StopLong(pr, sl), TakeLong(pLevel, tp), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("pending order: "+Symbol()+", BuyStop, "+DoubleToStr(pLevel,Digits)+", "+DoubleToStr(pLots,2)); 
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 0:
      for (c = 0; c < NumberOfTries; c++) {
         RefreshRates();
         ticket = OrderSend(Symbol(), OP_BUY, pLots, NormalizeDouble(Ask,Digits), sp, NormalizeDouble(StopLong(Bid, sl),Digits), NormalizeDouble(TakeLong(Ask, tp),Digits), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("Open order: "+Symbol()+", Buy, "+DoubleToStr(Ask,Digits)+", "+DoubleToStr(pLots,2));
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 3:
      for (c = 0; c < NumberOfTries; c++) {
         ticket = OrderSend(Symbol(), OP_SELLLIMIT, pLots, pLevel, sp, StopShort(pr, sl), TakeShort(pLevel, tp), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("pending order: "+Symbol()+", SellLimit, "+DoubleToStr(pLevel,Digits)+", "+DoubleToStr(pLots,2));  
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 5:
      for (c = 0; c < NumberOfTries; c++) {
         ticket = OrderSend(Symbol(), OP_SELLSTOP, pLots, pLevel, sp, StopShort(pr, sl), TakeShort(pLevel, tp), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("pending order: "+Symbol()+", SellStop, "+DoubleToStr(pLevel,Digits)+", "+DoubleToStr(pLots,2));  
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 1:
      for (c = 0; c < NumberOfTries; c++) {
         ticket = OrderSend(Symbol(), OP_SELL, pLots, NormalizeDouble(Bid,Digits), sp, NormalizeDouble(StopShort(Ask, sl),Digits), NormalizeDouble(TakeShort(Bid, tp),Digits), pComment, pMagic, pDatetime, pColor);
         err = GetLastError();
         if (err == 0/* NO_ERROR */) 
           {
            SendNotification("Open order: "+Symbol()+", Sell, "+DoubleToStr(Bid,Digits)+", "+DoubleToStr(pLots,2));
            break;
           }
         if (!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
   }
   return (ticket);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
double StopLong(double price, int stop) {
   if (stop == 0) return (0);
   else return (price - stop * Point);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double StopShort(double price, int stop) {
   if (stop == 0) return (0);
   else return (price + stop * Point);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double TakeLong(double price, int stop) {
   if (stop == 0) return (0);
   else return (price + stop * Point);
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double TakeShort(double price, int stop) {
   if (stop == 0) return (0);
   else return (price - stop * Point);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
double CalculateProfit() {
   double Profit = 0;
   for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
      komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
         if (OrderType() == OP_BUY || OrderType() == OP_SELL) Profit += OrderProfit();
   }
   return (Profit);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
void TrailingAlls(int pType, int stop, double AvgPrice) {
   double profit;
   double stoptrade;
   double stopcal;
   if (stop != 0) {
      for (int trade = OrdersTotal() - 1; trade >= 0; trade--) {
         if (OrderSelect(trade, SELECT_BY_POS, MODE_TRADES)) {
            if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
            if (OrderSymbol() == Symbol() || OrderMagicNumber() == MagicNumber) {
               if (OrderType() == OP_BUY) {
                  profit = NormalizeDouble((Bid - AvgPrice) / Point, 0);
                  if (profit < pType) continue;
                  stoptrade = OrderStopLoss();
                  stopcal = Bid - stop * Point;
                  if (stoptrade == 0.0 || (stoptrade != 0.0 && stopcal > stoptrade)) 
                 komoles=OrderModify(OrderTicket(), AvgPrice, stopcal, OrderTakeProfit(), 0, Aqua);
               }
               if (OrderType() == OP_SELL) {
                  profit = NormalizeDouble((AvgPrice - Ask) / Point, 0);
                  if (profit < pType) continue;
                  stoptrade = OrderStopLoss();
                  stopcal = Ask + stop * Point;
                  if (stoptrade == 0.0 || (stoptrade != 0.0 && stopcal < stoptrade)) 
                  komoles=OrderModify(OrderTicket(), AvgPrice, stopcal, OrderTakeProfit(), 0, Red);
               }
            }
            Sleep(1000);
         }
      }
   }
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

double AccountEquityHigh() {
   if (CountTrades() == 0) AccountEquityHighAmt = AccountEquity();
   if (AccountEquityHighAmt < PrevEquity) AccountEquityHighAmt = PrevEquity;
   else AccountEquityHighAmt = AccountEquity();
   PrevEquity = AccountEquity();
   return (AccountEquityHighAmt);
}
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

double FindLastBuyPrice() {
   double oldorderopenprice=0;
   int oldticketnumber;
   double unused = 0;
   int ticketnumber = 0;
   for ( cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
      komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_BUY) {
         oldticketnumber = OrderTicket();
         if (oldticketnumber > ticketnumber) {
            oldorderopenprice = OrderOpenPrice();
            unused = oldorderopenprice;
            ticketnumber = oldticketnumber;
         }
      }
   }
   return (oldorderopenprice);
}

double FindLastSellPrice() {
   double oldorderopenprice=0;
   int oldticketnumber;
   double unused = 0;
   int ticketnumber = 0;
   for (cnt = OrdersTotal() - 1; cnt >= 0; cnt--) {
      komoles=OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_SELL) {
         oldticketnumber = OrderTicket();
         if (oldticketnumber > ticketnumber) {
            oldorderopenprice = OrderOpenPrice();
            unused = oldorderopenprice;
            ticketnumber = oldticketnumber;
         }
      }
   }
   return (oldorderopenprice);
}
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí