//+------------------------------------------------------------------+
//|                                                    Projet 04.mq4 |
//|                                                  Copyright 2023, |
//|                                                                  |
//+------------------------------------------------------------------+
//--------------------Your Change Start--------------------------------

#property version "1.02"
#property link      "Forex Winner Ea"// Only change Test Into "Change Text"
#property description"CONTRACT"// Only change Test Into "Change Text"
#property description"Email: Abdulxahad19@gmail.com"// Only change Test Into "Change Text"
#property description""// Only change Test Into "Change Text"
#property description""// Only change Test Into "Change Text"

#property description""// Only change Test Into "Change Text"
#property description "forexearnbdico"
#define Copyright "Copyright © 2023, Forex WINNER EA" // Only change Test Into "Change Text"
#property copyright Copyright
#property strict
//+------------------------------------------------------------------+
//| Name of the EA                                                   |
//+------------------------------------------------------------------+
extern string EA_Name = "Forex WINNER EA ";
string Owner = "forexearnbdico";
string Contact = "Email: Abdulxahad19@gmail.com ";
//+------------------------------------------------------------------+
//| Authorization and Expiration date for the EA                     |
//+------------------------------------------------------------------+
datetime expDate = D'2023.09.29 23:55'; // yyyy.mm.dd<-- expired date
int allowedAccountNumbers[9999] =
  {
   310416709, 310412921, 310414039, 310413555, 1600109727, 310411959, 310411239, 6005601, 260789913, 230944394, 320125264, 5864001, 260784697, 260782092, 141000344, 56129966, 56129967, 38005357, 56129965, 22595771, 330246906, 17751851, 24372660, 110019895, 53483829, 2132602615, 102865, 260772890, 38216624, 56128453, 330259968, 330261080, 6973836, 250855267, 56119492, 24440346, 20932039, 330253189, 330252350, 437814, 6002511, 330247349, 22013702, 46102642, 56126565, 120201094, 51407995, 231088399, 231080470, 231080474, 38003230, 2100200249, 192139837, 231074929, 339376, 339176, 231067931, 320321354, 231065509, 220748121, 24368645, 24368642, 24368628, 24368617, 141136159, 192080160, 192080166, 192087997, 192080154, 290729490, 220734699, 6748098, 290768531, 301326664, 301326668, 310359156, 301329698, 750729, 13027894, 13527690, 301329704, 301329710, 10576779, 56120025, 310402183, 320323525, 301329718, 320287929, 320287926, 300724432, 301329724, 38000971, 320305818, 320287928, 320287930, 290797780, 320293256, 999049102, 189402, 187461, 1000012579, 192079962, 46002444, 47074913, 301329729, 5015555, 10574113, 10574122, 2100199368, 2100102903, 301370702, 301364931, 301364963, 301363842, 22668478, 117043700, 271619370, 271619248, 271619247, 271619242, 169745, 301342826, 5103852, 10572601, 301338471, 301340934, 2100127831, 301338667, 301338700, 301338711, 60127544, 241334311, 301333295, 21327810, 62630015, 290811032, 290811144, 35124407, 226727, 271376212, 271589085, 290793203, 290803005, 290803011, 290803023, 290803031, 290803035, 290803042, 290803045, 290777186, 290777238, 5793561, 290797783, 280428807, 290708505, 290708508, 10565339, 22642646, 60124625, 290793095, 290776570, 290778420, 290791966, 290791971, 290791974, 290791975, 290791976, 290791978, 290791980, 290791982, 290790446, 60127270, 290783307, 50893152, 60127243, 9106202, 4561741, 766118, 290779891, 290777138, 4561464, 24333650, 271705126, 271702365, 271702356, 271701961, 271701959, 271701950, 271700614, 271700604, 271700600, 271698838, 58808192, 22620250, 22619162, 60126730, 271680740, 65209315, 60126358, 53409128, 2875737, 5711440, 5711469, 15769428, 112883, 271670101, 271663568, 250972252, 250979131, 4559342, 250972252, 3754760, 3754799, 60126208, 250966681, 250973804, 250966081, 800837865, 271628286, 260657559, 56105041, 250959657, 56105041, 250957659, 35055890, 2100198278, 2100198280, 2100197940, 250953184, 250951695, 250950477, 250949189, 56104289, 363317, 250937747, 2100198277, 330231524, 1149678, 5767394, 5618549, 60125487, 117017757, 220579967, 60124536, 13025770, 330226965, 60124742, 2100197910, 13025412, 5000445, 5763809, 60124966, 60124932, 5763058, 330215114, 330215118, 330215126, 5762992, 330213208, 13024948, 330212436, 60124502, 362926, 548188, 13024780, 290448830, 320247513, 5670568, 60124670, 280755909, 21454957, 53379729, 13024449, 13022238, 10565339, 60124033, 5527955, 5527967, 5586556, 5586494, 5586473, 5586460, 5585377, 60124032, 108151, 280742519, 280742542, 3751953, 280734909, 1148217, 5753815, 571958, 571729, 260753046, 260756315, 280730787, 280730796, 5585003, 13022980, 320207539, 46175797, 260764032, 260762646, 260758710, 310307023, 3957871, 5743926, 5434951, 241612110, 241612108, 27362937, 241612106, 241612105, 241612104, 241612103, 241612102, 241612100, 241612096, 241604510, 5742489, 241605261, 241617296, 443354, 22546495, 13021463, 13004694, 241591851, 290748564, 800833896, 241606464, 241605554, 231047192, 290589021, 241599814, 241599469, 13020888, 90307343, 90876405, 241598720, 241598716, 241598721, 241598555, 241598558, 241598559, 241596128, 231052121, 230942650, 241587481, 241587697, 241586738, 44094296, 5522658, 686468, 35050856, 330023862, 5724392, 220093895, 24110069, 47055958, 24390748, 220683034, 20890279, 231041409, 220670829, 231040169, 5711441, 290505538, 10565339, 51194337, 310200794, 231038313, 55006805, 231037934, 8963723, 88014706, 4457412, 6336708, 360439, 20314776, 890367718, 8002244, 5727022, 5727021, 5727019, 5727018, 5727017, 5724676, 5724673, 5724670, 5713913, 5713912, 53338904, 231036521, 10569792, 10569822, 10569823, 10569824, 10569825, 260675215, 3748617, 330032453, 220708708, 10570144, 10570145, 10570146, 10570181, 220680918, 220694255, 220703637, 10570143, 10569437, 46071377, 220698139, 290636244, 220696924, 310364137, 310364161, 320243283, 310367068, 220695974, 10569792, 220694810, 220694807, 220692136, 220692127, 10569667, 46070806, 220691140, 250852939, 438088, 220689347, 20829806, 220689025, 220689151, 241501008, 437814, 271557181, 250280548, 437834, 10568483, 90865412, 320183680, 220683034, 21398598, 229488, 46069257, 220680804, 220678889, 310390721, 220677774, 320258092, 10568801, 320236039, 5611439, 310360242, 310393621, 330179201, 5711441, 330019766, 310390036, 52133589, 310387193, 310382563, 310381317, 310362509, 310380447, 22224590, 5714333, 5713913, 5713912, 4558630, 5713692, 435807, 4558456, 310373184, 320239407, 22224590, 320206708, 320206716, 320206723, 320206732, 4558004, 310371777, 260600979, 5711107, 310364286, 33126040, 90866470, 5434953, 301318199, 310361207, 310360465, 435036, 310360389, 320259320, 310360242, 4557465, 310359156, 789012, 345678
  };
// Authorized account number
bool ignAuth = false;
string allowedAccountNames[9999] =
  {
//"Syarief Azman bin Rosli", "Syarief Azman Bin Rosli", "SYARIEF AZMAN ROSLI",
   "Mohd Nizab Pawan",
   "Nazmi Zakaria",
   "Yusrezal Bin Ramdzan", "Yusrezal Ramdzan",
   "Syed Kamal Al-Yahya Bin Syed Mohd", "Bin Syed Mohd Syed Kamal Al-Yahya",
   "Jimmy Antonio Luciano Baez", "Jimmy Luciano",
   "Ahmad Husaini Bin Shahrul Azmi", "Ahmad Husaini Shahrul Azmi",
   "Zaliha Binti Hussin", "Zaliha Hussin"
  };
string ExpiryAlert = EA_Name + " EXPIRED. "
                     "\nAccount " +
                     IntegerToString(AccountNumber()) + " is Unauthorized. "
                     "\nUse Demo account to access Trials Mode. "
                     "\nPLEASE CONTACT " +
                     Owner + " FOR MORE INFO. "
                     "\n" +
                     Contact;
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
enum priod
  {
   priod1 = PERIOD_M1, //M1
   priod2 = PERIOD_M5,//M5
   priod3 = PERIOD_M15, // M15
   priod4 = PERIOD_M30, // M30
   priod5 = PERIOD_H1, // H1
   priod6 = PERIOD_H4, //H4
   priod7 = PERIOD_D1, //D1
   priod8 = PERIOD_W1, //W1
   priod9 = PERIOD_MN1 //MN

  };

priod period = priod5; //BUY TIME FRAME

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
extern double PipStep = 0;
bool komoles = 0;
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
datetime Date_Time = D'2099.07.19 08:24:00'; //I.E: D'YYYY.MM.DD HH:MM:SS'
//------------------------------------
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
enum exc
  {
   A = 0, // on Every Tick
   B = 1, // on Every New Bar

  };
//--- input parameters
exc Execution_Mode = B; // Execution Mode

double PriceTarget, StartEquity, BuyTarget, SellTarget;
double AveragePrice, SellLimit, BuyLimit;
double LastBuyPrice, LastSellPrice, Spread;
bool flag;
string EAName = EA_Name;
datetime timeprev = 0, expiration;
int NumOfTrades = 0;
double iLots, l, ordprof;
int cnt = 0, total;
double Stopper = 0.0;
bool TradeNow = FALSE, LongTrade = FALSE, ShortTrade = FALSE;
int ticket;
bool  NewOrdersPlaced = FALSE;
double AccountEquityHighAmt, PrevEquity;
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
int OnInit()
  {
   ignoreAuth();
   ChartComment();
   Spread = MarketInfo(Symbol(), MODE_SPREAD) * Point;
   return RunAuthorization();
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnTick()
  {
   ChartComment();
   if(Execution_Mode == B)
     {
      OnEveryNewBar();
     }
   else
      if(Execution_Mode == A)
        {
         Main();
        }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
datetime BarTime;
void OnEveryNewBar()
  {
   if(BarTime < Time[0])
     {
      // we have a new bar opened
      BarTime = Time[0]; // keep the new bar open time
      Main();
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int Main()
  {
   /* if (AccountNumber() !=Account_Number)
    {
     ExpertRemove();
     Alert("Your VPS/PC is not supported, Kindly update VPS!!!");
    } */
//if(TimeCurrent() > Date_Time)
//  {
//   ExpertRemove();
//   Alert("Your VPS Payment is due. Kindly pay your due VPS amount!!!");
//  }
   l = MathFloor((AccountEquity() / Equity_per_lot / 10000) / MarketInfo(Symbol(), 24)) * MarketInfo(Symbol(), 24);
   Lots = l;
   if(Lots < MarketInfo(Symbol(), 23))
      Lots = MarketInfo(Symbol(), 23);
   if(Lots > MarketInfo(Symbol(), 25))
      Lots = MarketInfo(Symbol(), 25);
   if(DynamicPips)
     {
      double hival = High[iHighest(NULL, period, MODE_HIGH, Glubina, 1)]; // calculate highest and lowest price from last bar to 24 bars ago
      double loval = Low[iLowest(NULL, period, MODE_LOW, Glubina, 1)]; // chart used for symbol and time period
      PipStep = NormalizeDouble((hival - loval) / DEL / Point, 0); // calculate pips for spread between orders
      if(PipStep < DefaultPips / DEL)
         PipStep = NormalizeDouble(DefaultPips / DEL, 0);
      if(PipStep > DefaultPips * DEL)
         PipStep = NormalizeDouble(DefaultPips * DEL, 0);       // if dynamic pips fail, assign pips extreme value
     }// else PipStep = DefaultPips;
//double filtr_MA = iMA(NULL,60,60,0,0,0,0);
   double PrevCl;
   double CurrCl;
   if(UseTrailingStop)
      TrailingAlls(TrailStart, TrailStop, AveragePrice);
   if((iCCI(NULL, 15, 55, 0, 0) > Drop && ShortTrade) || (iCCI(NULL, 15, 55, 0, 0) < (-Drop) && LongTrade))
     {
      CloseThisSymbolAll();
      Print("Closed All due to TimeOut");
     }
   if(timeprev == Time[0])
      return (0);
   timeprev = Time[0];
   double CurrentPairProfit = CalculateProfit();
   if(UseEquityStop)
     {
      if(CurrentPairProfit < 0.0 && MathAbs(CurrentPairProfit) > TotalEquityRisk / 100.0 * AccountEquityHigh())
        {
         CloseThisSymbolAll();
         Print("Closed All due to Stop Out");
         NewOrdersPlaced = FALSE;
        }
     }
   total = CountTrades();
   if(total == 0)
      flag = FALSE;
   for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
     {
      komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
        {
         if(OrderType() == OP_BUY)
           {
            LongTrade = TRUE;
            ShortTrade = FALSE;
            break;
           }
        }
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
        {
         if(OrderType() == OP_SELL)
           {
            LongTrade = FALSE;
            ShortTrade = TRUE;
            break;
           }
        }
     }
   if(total > 0 && total <= MaxTrades)
     {
      RefreshRates();
      LastBuyPrice = FindLastBuyPrice();
      LastSellPrice = FindLastSellPrice();
      if(LongTrade && LastBuyPrice - Ask >= PipStep * Point)
         TradeNow = TRUE;
      if(ShortTrade && Bid - LastSellPrice >= PipStep * Point)
         TradeNow = TRUE;
     }
   if(total < 1)
     {
      ShortTrade = FALSE;
      LongTrade = FALSE;
      TradeNow = TRUE;
      StartEquity = AccountEquity();
     }
   if(TradeNow)
     {
      LastBuyPrice = FindLastBuyPrice();
      LastSellPrice = FindLastSellPrice();
      if(ShortTrade)
        {
         NumOfTrades = total;
         iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
         RefreshRates();
         ticket = OpenPendingOrder(1, iLots, Bid, slip, Ask, 0, 0, EAName + "-" + IntegerToString(NumOfTrades + 1), MagicNumber, 0, HotPink);
         if(ticket < 0)
           {
            Print("Error: ", GetLastError());
            return (0);
           }
         LastSellPrice = FindLastSellPrice();
         TradeNow = FALSE;
         NewOrdersPlaced = TRUE;
        }
      else
        {
         if(LongTrade)
           {
            NumOfTrades = total;
            iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
            ticket = OpenPendingOrder(0, iLots, Ask, slip, Bid, 0, 0, EAName + "-" + IntegerToString(NumOfTrades + 1), MagicNumber, 0, Lime);
            if(ticket < 0)
              {
               Print("Error: ", GetLastError());
               return (0);
              }
            LastBuyPrice = FindLastBuyPrice();
            TradeNow = FALSE;
            NewOrdersPlaced = TRUE;
           }
        }
     }
   if(TradeNow && total < 1)
     {
      PrevCl = iClose(Symbol(), 0, 2);
      CurrCl = iClose(Symbol(), 0, 1);
      SellLimit = Bid;
      BuyLimit = Ask;
      if(!ShortTrade && !LongTrade)
        {
         NumOfTrades = total;
         iLots = NormalizeDouble(Lots * MathPow(LotExponent, NumOfTrades), lotdecimal);
         if(PrevCl > CurrCl)
           {
            if(iRSI(NULL, PERIOD_H1, 14, PRICE_CLOSE, 1) > RsiMinimum)
              {
               ticket = OpenPendingOrder(1, iLots, SellLimit, slip, SellLimit, 0, 0, EAName + "-" + IntegerToString(NumOfTrades + 1), MagicNumber, 0, HotPink);
               if(ticket < 0)
                 {
                  Print("Error: ", GetLastError());
                  return (0);
                 }
               LastBuyPrice = FindLastBuyPrice();
               NewOrdersPlaced = TRUE;
              }
           }
         else
           {
            if(iRSI(NULL, PERIOD_H1, 14, PRICE_CLOSE, 1) < RsiMaximum)
              {
               ticket = OpenPendingOrder(0, iLots, BuyLimit, slip, BuyLimit, 0, 0, EAName + "-" + IntegerToString(NumOfTrades + 1), MagicNumber, 0, Lime);
               if(ticket < 0)
                 {
                  Print("Error: ", GetLastError());
                  return (0);
                 }
               LastSellPrice = FindLastSellPrice();
               NewOrdersPlaced = TRUE;
              }
           }
         //if(ticket > 0)
         //   expiration = TimeCurrent() + 60.0 * (60.0 * MaxTradeOpenHours);
         TradeNow = FALSE;
        }
     }
   total = CountTrades();
   AveragePrice = 0;
   double Count = 0;
   for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
     {
      komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
        {
         if(OrderType() == OP_BUY || OrderType() == OP_SELL)
           {
            AveragePrice += OrderOpenPrice() * OrderLots();
            Count += OrderLots();
           }
        }
     }
   if(total > 0)
      AveragePrice = NormalizeDouble(AveragePrice / Count, Digits);
   if(NewOrdersPlaced)
     {
      for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
        {
         komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
         if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
            continue;
         if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
           {
            if(OrderType() == OP_BUY)
              {
               PriceTarget = AveragePrice + TakeProfit * Point;
               BuyTarget = PriceTarget;
               Stopper = AveragePrice - Stoploss * Point;
               flag = TRUE;
              }
           }
         if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
           {
            if(OrderType() == OP_SELL)
              {
               PriceTarget = AveragePrice - TakeProfit * Point;
               SellTarget = PriceTarget;
               Stopper = AveragePrice + Stoploss * Point;
               flag = TRUE;
              }
           }
        }
     }
   if(NewOrdersPlaced)
     {
      if(flag == TRUE)
        {
         for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
           {
            komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
            if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
               continue;
            if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
               komoles = OrderModify(OrderTicket(), NormalizeDouble(AveragePrice, Digits), NormalizeDouble(OrderStopLoss(), Digits), NormalizeDouble(PriceTarget, Digits), 0, Yellow);
            NewOrdersPlaced = FALSE;
           }
        }
     }
   return (0);
  }
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CountTrades()
  {
   int count = 0;
   for(int trade = OrdersTotal() - 1; trade >= 0; trade--)
     {
      komoles = OrderSelect(trade, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
         if(OrderType() == OP_SELL || OrderType() == OP_BUY)
            count++;
     }
   return (count);
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CloseThisSymbolAll()
  {
   for(int trade = OrdersTotal() - 1; trade >= 0; trade--)
     {
      komoles = OrderSelect(trade, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() == Symbol())
        {
         if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
           {
            if(OrderType() == OP_BUY)
               komoles = OrderClose(OrderTicket(), OrderLots(), Bid, slip, Blue);
            if(OrderType() == OP_SELL)
               komoles = OrderClose(OrderTicket(), OrderLots(), Ask, slip, Red);
           }
         Sleep(1000);
        }
     }
  }

//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OpenPendingOrder(int pType, double pLots, double pLevel, int sp, double pr, int sl, int tp, string pComment, int pMagic, int pDatetime, color pColor)
  {
   int err = 0;
   int c = 0;
   int NumberOfTries = 100;
   switch(pType)
     {
      case 2:
         for(c = 0; c < NumberOfTries; c++)
           {
            ticket = OrderSend(Symbol(), OP_BUYLIMIT, pLots, pLevel, sp, StopLong(pr, sl), TakeLong(pLevel, tp), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("pending order: " + Symbol() + ", BuyLimit, " + DoubleToStr(pLevel, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(1000);
           }
         break;
      case 4:
         for(c = 0; c < NumberOfTries; c++)
           {
            ticket = OrderSend(Symbol(), OP_BUYSTOP, pLots, pLevel, sp, StopLong(pr, sl), TakeLong(pLevel, tp), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("pending order: " + Symbol() + ", BuyStop, " + DoubleToStr(pLevel, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(5000);
           }
         break;
      case 0:
         for(c = 0; c < NumberOfTries; c++)
           {
            RefreshRates();
            ticket = OrderSend(Symbol(), OP_BUY, pLots, NormalizeDouble(Ask, Digits), sp, NormalizeDouble(StopLong(Bid, sl), Digits), NormalizeDouble(TakeLong(Ask, tp), Digits), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("Open order: " + Symbol() + ", Buy, " + DoubleToStr(Ask, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(5000);
           }
         break;
      case 3:
         for(c = 0; c < NumberOfTries; c++)
           {
            ticket = OrderSend(Symbol(), OP_SELLLIMIT, pLots, pLevel, sp, StopShort(pr, sl), TakeShort(pLevel, tp), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("pending order: " + Symbol() + ", SellLimit, " + DoubleToStr(pLevel, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(5000);
           }
         break;
      case 5:
         for(c = 0; c < NumberOfTries; c++)
           {
            ticket = OrderSend(Symbol(), OP_SELLSTOP, pLots, pLevel, sp, StopShort(pr, sl), TakeShort(pLevel, tp), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("pending order: " + Symbol() + ", SellStop, " + DoubleToStr(pLevel, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(5000);
           }
         break;
      case 1:
         for(c = 0; c < NumberOfTries; c++)
           {
            ticket = OrderSend(Symbol(), OP_SELL, pLots, NormalizeDouble(Bid, Digits), sp, NormalizeDouble(StopShort(Ask, sl), Digits), NormalizeDouble(TakeShort(Bid, tp), Digits), pComment, pMagic, pDatetime, pColor);
            err = GetLastError();
            if(err == 0/* NO_ERROR */)
              {
               SendNotification("Open order: " + Symbol() + ", Sell, " + DoubleToStr(Bid, Digits) + ", " + DoubleToStr(pLots, 2));
               break;
              }
            if(!(err == 4/* SERVER_BUSY */ || err == 137/* BROKER_BUSY */ || err == 146/* TRADE_CONTEXT_BUSY */ || err == 136/* OFF_QUOTES */))
               break;
            Sleep(5000);
           }
     }
   return (ticket);
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
double StopLong(double price, int stop)
  {
   if(stop == 0)
      return (0);
   else
      return (price - stop * Point);
  }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double StopShort(double price, int stop)
  {
   if(stop == 0)
      return (0);
   else
      return (price + stop * Point);
  }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double TakeLong(double price, int stop)
  {
   if(stop == 0)
      return (0);
   else
      return (price + stop * Point);
  }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
double TakeShort(double price, int stop)
  {
   if(stop == 0)
      return (0);
   else
      return (price - stop * Point);
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
double CalculateProfit()
  {
   double Profit = 0;
   for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
     {
      komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber)
         if(OrderType() == OP_BUY || OrderType() == OP_SELL)
            Profit += OrderProfit();
     }
   return (Profit);
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
void TrailingAlls(int pType, int stop, double AvgPrice)
  {
   double profit;
   double stoptrade;
   double stopcal;
   if(stop != 0)
     {
      for(int trade = OrdersTotal() - 1; trade >= 0; trade--)
        {
         if(OrderSelect(trade, SELECT_BY_POS, MODE_TRADES))
           {
            if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
               continue;
            if(OrderSymbol() == Symbol() || OrderMagicNumber() == MagicNumber)
              {
               if(OrderType() == OP_BUY)
                 {
                  profit = NormalizeDouble((Bid - AvgPrice) / Point, 0);
                  if(profit < pType)
                     continue;
                  stoptrade = OrderStopLoss();
                  stopcal = Bid - stop * Point;
                  if(stoptrade == 0.0 || (stoptrade != 0.0 && stopcal > stoptrade))
                     komoles = OrderModify(OrderTicket(), AvgPrice, stopcal, OrderTakeProfit(), 0, Aqua);
                 }
               if(OrderType() == OP_SELL)
                 {
                  profit = NormalizeDouble((AvgPrice - Ask) / Point, 0);
                  if(profit < pType)
                     continue;
                  stoptrade = OrderStopLoss();
                  stopcal = Ask + stop * Point;
                  if(stoptrade == 0.0 || (stoptrade != 0.0 && stopcal < stoptrade))
                     komoles = OrderModify(OrderTicket(), AvgPrice, stopcal, OrderTakeProfit(), 0, Red);
                 }
              }
            Sleep(1000);
           }
        }
     }
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double AccountEquityHigh()
  {
   if(CountTrades() == 0)
      AccountEquityHighAmt = AccountEquity();
   if(AccountEquityHighAmt < PrevEquity)
      AccountEquityHighAmt = PrevEquity;
   else
      AccountEquityHighAmt = AccountEquity();
   PrevEquity = AccountEquity();
   return (AccountEquityHighAmt);
  }
//íííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double FindLastBuyPrice()
  {
   double oldorderopenprice = 0;
   int oldticketnumber;
   double unused = 0;
   int ticketnumber = 0;
   for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
     {
      komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_BUY)
        {
         oldticketnumber = OrderTicket();
         if(oldticketnumber > ticketnumber)
           {
            oldorderopenprice = OrderOpenPrice();
            unused = oldorderopenprice;
            ticketnumber = oldticketnumber;
           }
        }
     }
   return (oldorderopenprice);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double FindLastSellPrice()
  {
   double oldorderopenprice = 0;
   int oldticketnumber;
   double unused = 0;
   int ticketnumber = 0;
   for(cnt = OrdersTotal() - 1; cnt >= 0; cnt--)
     {
      komoles = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != MagicNumber)
         continue;
      if(OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_SELL)
        {
         oldticketnumber = OrderTicket();
         if(oldticketnumber > ticketnumber)
           {
            oldorderopenprice = OrderOpenPrice();
            unused = oldorderopenprice;
            ticketnumber = oldticketnumber;
           }
        }
     }
   return (oldorderopenprice);
  }
//ííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííííí
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//|The comment that will appear on chart                             |
//+------------------------------------------------------------------+
double MartingaleMultiplier = LotExponent;
void ChartComment()
  {
//-- Get Date String
   datetime Today = StrToTime(StringConcatenate(Year(), ".", Month(), ".", Day()));
   string Date = TimeToStr(TimeCurrent(), TIME_DATE + TIME_MINUTES + TIME_SECONDS); //"yyyy.mm.dd"
//--EA Comment--
   if(isAuthorized() || IsDemo())
     {
      Comment(
         "\n ", Copyright,
         "\n ", Date, "\n",
         "\n ", AuthMessage(), "\n",
         "\n ", EA_Name,
         "\n Starting Lot: ", Lots,
         "\n Layer Multiplier: ", MartingaleMultiplier,
         "\n Equity: $", NormalizeDouble(AccountInfoDouble(ACCOUNT_EQUITY), 2),
         "\n Buy: ", CountBuy(), " | Sell: ", CountSell(),
         "\n");
     }
   else
      if(!isAuthorized() && !IsDemo() && (TimeCurrent() < expDate))
        {
         Comment(
            "\n ", Copyright,
            "\n ", Date, "\n",
            "\n ", AuthMessage(), "\n",
            "\n ", EA_Name,
            "\n Starting Lot: ", Lots,
            "\n Layer Multiplier: ", MartingaleMultiplier,
            "\n Equity: $", NormalizeDouble(AccountInfoDouble(ACCOUNT_EQUITY), 2),
            "\n Buy: ", CountBuy(), " | Sell: ", CountSell(),
            "\n\n ExpireDate: ", expDate,
            "\n");
        }
      else
        {
         // do not run EA code
         MessageBox(ExpiryAlert);
         ExpertRemove();
         Comment("\n" + ExpiryAlert);
        }
//--EA Comment--
  }
//+------------------------------------------------------------------+
//| Authorization                                                 |
//+------------------------------------------------------------------+
int accountNumber = AccountNumber();
string accountName = AccountName();
bool isAuthorized()
  {
   bool isAllowed = false;
//        for(int i = 0; i < ArraySize(allowedAccountNumbers); i++)
   for(int i = ArraySize(allowedAccountNumbers) - 1; i >= 0; i--)
     {
      if(accountNumber == allowedAccountNumbers[i] || accountName == allowedAccountNames[i])
        {
         isAllowed = true;
         break;
        }
      else
        {
         isAllowed = false;
        }
     }
   return isAllowed;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int RunAuthorization()
  {
   if(IsDemo())
     {
      // skip the authorization for demo account
      Print("Demo account detected, skipping authorization");
      return (INIT_SUCCEEDED);
     }
   if(TimeCurrent() > expDate)
     {
      if(isAuthorized())
        {
         // run EA code
         return (INIT_SUCCEEDED);
        }
      else
        {
         // do not run EA code
         MessageBox(ExpiryAlert);
         ExpertRemove();
         Comment("\n" + ExpiryAlert);
         return (INIT_FAILED);
        }
     }
   else
     {
      return (INIT_SUCCEEDED);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string AuthMessage()
  {
   if(IsDemo())
     {
      // skip the authorization for demo account
      return ("Demo account detected.\n Account Authorized.\n Account Number: " + IntegerToString(AccountNumber()) + "\n Account Name: " + AccountName());
     }
   else
      if((TimeCurrent() < expDate) && (isAuthorized() == false))
        {
         return ("Account " + IntegerToString(AccountNumber()) + " is Unauthorized, EA will expire soon.\n Trials Mode Activated.");
        }
      else
         if(RunAuthorization() == (INIT_SUCCEEDED) && IsDemo() == false)
           {
            return ("Account Authorized.\n Account Number: " + IntegerToString(AccountNumber()) + "\n Account Name: " + AccountName());
           }
         else
           {
            return (ExpiryAlert);
           }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool ignoreAuth()
  {
   if(ignAuth == true)
     {
      //---ignore authorization
      ArrayFill(allowedAccountNumbers, 0, 1, AccountNumber());
      Print("allowedAccountNumbers[0]: ", allowedAccountNumbers[0]);
      //---
      return true;
     }
   else
      Print("allowedAccountNumbers[0]: ", allowedAccountNumbers[0]);
   return false;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CountSell()
  {
   RefreshRates();
   int k = 0;
   int index = OrdersTotal() - 1;
   while(index >= 0 && OrderSelect(index, SELECT_BY_POS, MODE_TRADES) == true)
     {
      if(OrderSymbol() == _Symbol && OrderMagicNumber() == MagicNumber)
        {
         if(OrderType() == OP_SELL)
           {
            k++;
           }
        }
      index--;
     }
   return k;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CountBuy()
  {
   RefreshRates();
   int k = 0;
   int index = OrdersTotal() - 1;
   while(index >= 0 && OrderSelect(index, SELECT_BY_POS, MODE_TRADES) == true)
     {
      if(OrderSymbol() == _Symbol && OrderMagicNumber() == MagicNumber)
        {
         if(OrderType() == OP_BUY)
           {
            k++;
           }
        }
      index--;
     }
   return k;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
