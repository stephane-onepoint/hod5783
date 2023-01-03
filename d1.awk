function toT9(s){
  F = "abcdefghijklmnopqrstuvwxyz"
  T = "22233344455566677778889999"
  split(tolower(s),S,"");
  r = ""
  for (i=1;i<=length(S);i++) {
    j = index(F,S[i])
    r = r substr(T,j,1)
  }
  return r
}
{
  split($1,N," ")
  lastname = N[length(N)]
  t9 = toT9(lastname)
  phone = $2
  gsub("[-]","",phone)
}
t9 == phone

# sqlite3 noahs.sqlite 'select name, phone from customers' | awk -F\| -f d1.awk

