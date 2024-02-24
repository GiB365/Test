#include <iostream>
#include <set>

using namespace std;

int main() {
    int x, y, g;

    cin >> x;

    set<string[2]> together;


    for (int i = 0; i < x; i++) {
        string first, second;
        cin >> first >> second;
        together.insert({first, second});
    }

    cin >> y;
    set<string[2]> appart;

    for (int i = 0; i < y; i++) {
        string first, second;
        cin >> first >> second;
        appart.insert({first, second});
    }

    cin >> g;
    set<set<string>> plan;

    for (int i = 0; i < g; i++) {
        string first, second, third;
        cin >> first >> second >> third;
        plan.insert({first, second, third});
    }

    int errors = 0;

    for (auto rule : together) {
        for (auto group : plan) {
            if (group.count(rule[0]) != 0 && group.count(rule[1]) != 0) {
                errors++;
            }
        }
    }
}