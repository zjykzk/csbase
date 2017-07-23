%{


    void cv();
%}

ws          [ \t\n]

%%
[a-zA-z]+/{ws} cv();
.           ECHO;
%%
void cv() {
    char f = *yytext;
    if (f == 'a' || f == 'e' || f == 'i' || f == 'u') {
        printf("%say", yytext);
        return;
    }
    printf("%s%cay", yytext + 1, *yytext);
}
