#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//97 ao 122 usa só letras minúsculas
//65 ao 90 usa só letras maiúsculas
//48 ao 57 usa só numeros
#define COMECO_CHAR 48
#define FIM_CHAR 57
#define MAX_SENHA 20

void Forca_Bruta(char *str, char *pre);

void Verifica_Senha(char *forca, char *pass);

FILE *resul;

int main() {
  char senha[MAX_SENHA] = "999999";

  Forca_Bruta(senha, "96");
  Forca_Bruta(senha, "8896");
  Forca_Bruta(senha, "8596");
  Forca_Bruta(senha, "08896");
  Forca_Bruta(senha, "08596");

  Forca_Bruta(senha, "97");
  Forca_Bruta(senha, "8897");
  Forca_Bruta(senha, "8597");
  Forca_Bruta(senha, "08897");
  Forca_Bruta(senha, "08597");

  Forca_Bruta(senha, "99");
  Forca_Bruta(senha, "8899");
  Forca_Bruta(senha, "8599");
  Forca_Bruta(senha, "08899");
  Forca_Bruta(senha, "08599");

  return 0;
}
void Forca_Bruta(char *pass, char *prefixo) {
  int i, tentativas;
  float j;
  char forca[MAX_SENHA];

  resul = fopen(prefixo, "w");

  for (i = 0;i < MAX_SENHA; i++)
    forca[i] = '\0';

  printf("\nGerando Lista...");

  for (forca[0] = COMECO_CHAR; forca[0] <= FIM_CHAR; forca[0]++)//1 caractere
    for (forca[1] = COMECO_CHAR; forca[1] <= FIM_CHAR; forca[1]++)//2 caracteres
      for (forca[2] = COMECO_CHAR; forca[2] <= FIM_CHAR; forca[2]++)//3 caracteres
        for (forca[3] = COMECO_CHAR; forca[3] <= FIM_CHAR; forca[3]++)//4 caracteres
          for (forca[4] = COMECO_CHAR; forca[4] <= FIM_CHAR; forca[4]++)//5 caracteres
            for (forca[5] = COMECO_CHAR; forca[5] <= FIM_CHAR; forca[5]++)//6 caracteres
             // for (forca[6] = COMECO_CHAR; forca[6] <= FIM_CHAR; forca[6]++)//7 caracteres
              //  for (forca[7] = COMECO_CHAR; forca[7] <= FIM_CHAR; forca[7]++)//8 caracteres
                //  for (forca[8] = COMECO_CHAR; forca[8] <= FIM_CHAR; forca[8]++)//9 caracteres
                   // for (forca[9] = COMECO_CHAR; forca[9] <= FIM_CHAR; forca[9]++)
                    {
                       fprintf(resul, "%s%s\n",prefixo, forca);
                    }

  fclose(resul);
}
