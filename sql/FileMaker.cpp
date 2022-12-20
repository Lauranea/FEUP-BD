#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

string remove_spaces(const string &s)
{
  int last = s.size() - 1;
  while (last >= 0 && s[last] == ' ')
    --last;
  return s.substr(0, last + 1);
}

int main()
{
    ofstream fo;
    fo.open("./QatarOut1.txt");
    ifstream fi;
    fi.open("./Qatar1.txt");
    if(!fi.is_open())
    {
        cout << "cringe happen" << endl;
    }
    string shitters;
    int idgrupo = 1;
    int idequipa = 1;
    string grupos;
    string equipas;
    while(getline(fi, shitters))
    {
        if(shitters.substr(0,5) == "Group" && idgrupo < 9)
        {
            grupos += "INSERT INTO Grupos VALUES(" + to_string(idgrupo) + ", \"" + shitters.substr(6,1) + "\");\n";
            cout << idgrupo << endl;
            equipas += "INSERT INTO Equipa (idEquipa, idGrupo, pontos, pais) VALUES (" + to_string(idequipa) + ", "+ to_string(idgrupo) + ", 0, \"" + remove_spaces(shitters.substr(11,15))  + "\");\n";
            idequipa++;
            equipas += "INSERT INTO Equipa (idEquipa, idGrupo, pontos, pais) VALUES (" + to_string(idequipa) + ", "+ to_string(idgrupo) + ", 0, \"" + remove_spaces(shitters.substr(26,15))  + "\");\n";
            idequipa++;
            equipas += "INSERT INTO Equipa (idEquipa, idGrupo, pontos, pais) VALUES (" + to_string(idequipa) + ", "+ to_string(idgrupo) + ", 0, \"" + remove_spaces(shitters.substr(41,15))  + "\");\n";
            idequipa++;
            equipas += "INSERT INTO Equipa (idEquipa, idGrupo, pontos, pais) VALUES (" + to_string(idequipa) + ", "+ to_string(idgrupo) + ", 0, \"" + remove_spaces(shitters.substr(56,15))  + "\");\n";
            idequipa++;
            idgrupo ++;
        }
    }
    fo << "Grupos:\n" << grupos << "\nEquipas:\n" << equipas;
    return 0;
}