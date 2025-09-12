#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

/////////////////
/// UTILITIES ///
/////////////////

// Clears entire console
void clrscr()
{
    cout << "\x1B[H\x1B[J";
}

// Clears cin (input) buffer
void clrbff()
{
    cin.clear();
    cin.ignore(1024,'\n');
}

//////////////////
/// OPERATIONS ///
//////////////////

class Ops
{
    private:
        vector<float> CB_Meas = {0,0}; // Cardboard vars
        vector<float> B_Meas = {0,0,0}; // Box vars
        float x; // Var for cutting functions
        
        // Short cuts calculation funcs
        float ShortA()
        {
            x = B_Meas[0] + B_Meas[1];
            return x;
        }
        float ShortB_Func()
        {
            x = (B_Meas[0] * 2) + B_Meas[1];
            return x;
        }
        float ShortC()
        {
            x = (B_Meas[0] * 2) + (B_Meas[1] * 2);
            return x;
        }
        float ShortD_Func()
        {
            x = (B_Meas[0] * 3) + (B_Meas[1] * 2);
            return x;
        }
        
        // Long cuts calculation funcs
        float LongA()
        {
            x = B_Meas[0] + B_Meas[2];
            return x;
        }
        float LongB_Func()
        {
            x = (B_Meas[0] * 2) + B_Meas[2];
            return x;
        }
        float LongC()
        {
            x = (B_Meas[0] * 2) + (B_Meas[2] * 2);
            return x;
        }
        float LongD_Func()
        {
            x = (B_Meas[0] * 3) + (B_Meas[2] * 2);
            return x;
        }
        
        // Cut method output
        void CutMethod()
        {
            float LongD = LongD_Func();
            float LongB = LongB_Func();
            float ShortB = ShortB_Func();
            float ShortD = ShortD_Func();
            
            float BaseNum = B_Meas[0];
            
            if (LongD <= CB_Meas[0])
            {
                cout << "Short side: " << 
                BaseNum << " " << LongA() << " " << LongB << " " << LongC() << " " << LongD << '\n';
                
                cout << "Long side: " << 
                BaseNum << " " << ShortA() << " " << ShortB;
            }
            else if ((LongB <= CB_Meas[0]) && (ShortD <= CB_Meas[1]))
            {
                cout << "Short side: " << 
                BaseNum << " " << LongA() << " " << LongB << '\n';
                
                cout << "Long side: " << 
                BaseNum << " " << ShortA() << " " << ShortB << " " << ShortC() << " " << ShortD_Func();
            }
            else if (LongD <= CB_Meas[1])
            {
                cout << "Short side: " << 
                BaseNum << " " << ShortA() << " " << ShortB << '\n';
                
                cout << "Long side: " << 
                BaseNum << " " << LongA() << " " << LongB << " " << LongC() << " " << LongD;
            }
            else if (ShortB <= (CB_Meas[0] + 0.5))
            {
                cout << "FIRST SHEET:\n" << "Short side: " <<
                BaseNum << " " << ShortA() + 0.5 << " " << ShortB + 0.5 << "\n\n";
                
                cout << "SECOND SHEET:\n" << "Long Side: " <<
                BaseNum << " " << LongA() + 0.5 << " " << LongB + 0.5;
            }
            else
            {
                cout << "TOO BIG!";
            }
        }
        
        // User input with error handling
        void UsrInp(float& x)
        {
            string y;
            
            cout << "\x1B[K"; // Erases from cursor to end of line
            
            while (true)
            {
                cin >> y;
                try
                {
                    x = stof(y); // Converts user input (string) to float
                    break;
                }
                catch(...)
                {
                    cout << "Wrong input! Please input only a number.\n";
                    cout << "\x1B[2A\x1B[24C\x1B[K"; // Places cursor up two lines and erases to end of line
                }
            }
        }
        
    public:
        // Calculation input
        void Get_Sort()
        {
            clrscr(); // Clear screen
            
            // Get cardboard dims
            cout << "Cardboard meaurement A: "; UsrInp(CB_Meas[0]);
            cout << "Cardboard meaurement B: "; UsrInp(CB_Meas[1]);
            
            cout << "\x1B[K\n"; // Erase from cursor to end of line
            
            // Get box dims
            cout << "First box measurement:  "; UsrInp(B_Meas[0]);
            cout << "Second box measurement: "; UsrInp(B_Meas[1]);
            cout << "Last box measurement:   "; UsrInp(B_Meas[2]);
            
            cout << "\x1B[K\n"; // Erase from cursor to end of line
            
            sort(CB_Meas.begin(),CB_Meas.end()); // Sort cardboard dims
            
            sort(B_Meas.begin(),B_Meas.end()); // Sort box dims
            
            CutMethod(); // Call cut method
        }
        
        bool ConfMenu() // Repeat or quit program
        {
            char conf;
            cout << "\nNeed to make another box? (y/N): "; cin >> conf;
            clrbff();
            conf = tolower(conf);
            
            switch (conf)
            {
                case 'y':
                    clrscr();
                    return true;
                default:
                    return false;
            }
        }
};

/////////////////////
/// MAIN FUNCTION ///
/////////////////////

int main()
{
    Ops Final; // Object creation
    
    bool looplatch = true;
    
    while (looplatch)
    {
        Final.Get_Sort();
        looplatch = Final.ConfMenu();
    }
    
    return 0;
}