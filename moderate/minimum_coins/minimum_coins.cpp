#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <vector>
#include <climits>

using namespace std;
int minimumCoins(vector<int> , int );
vector<int> moneyBack(100000);

int main(int argc, char *argv[]) {

    long n;
    vector<int> v;
    v.push_back(1);
    v.push_back(3);
    v.push_back(5);
    ifstream stream(argv[1]);
    string line;
    while (getline(stream, line)) {
        n = atoi(line.c_str());
        cout << minimumCoins(v,n) << endl;
    }
    return 0;
}

int minimumCoins(vector<int> coins, int payment)
{
    for(int i = 0; i <= payment; i++)
        moneyBack[i] = INT_MAX;
    moneyBack[0] = 0;
    for(int i = 1; i <= payment; i++)
    {
        for(int j = 0; j < (int)coins.size(); j++)
        {
            if(coins[j] <= i && moneyBack[i-coins[j]] + 1 < moneyBack[i]){
                moneyBack[i] = moneyBack[i - coins[j]] + 1;
            }
        }
    }
    return moneyBack[payment];
}
