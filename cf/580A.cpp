#include <iostream>
#include <vector>
using namespace std;
int main() {
    ios::sync_with_stdio(false);
    int n;
    cin >> n;
    vector<int> v(n);
    for (auto& i : v) cin >> i;

    int max_len = 1;
    int len = 1;
    for (int i = 1; i < v.size(); ++i) {
        if (v[i] >= v[i - 1]) {
            ++len;
            if (len > max_len) max_len = len;
        } else {
            len = 1;
        }
    }
    cout << max_len << '\n';
}
