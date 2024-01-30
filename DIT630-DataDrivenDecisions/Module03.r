# 1
# create an empty vector
v <- c()
# iterate 1 through 10
for(i in 1:10) {
    # if i is a mutliple of 2 or a multiple of 3, move to next cycle
    # if(i %% 2 == 0 | i %% 3 == 0) {
    #     next
    # }
    # only append values which are not multiples of 2 or 3 (neither)
    if (i %% 2 != 0 & i %% 3 != 0) {
        v <- append(v, i)
    }
}
print(v)    # [1, 5, 7]

# 2
print(( -5 < 2 ) & ( 3 + 9 == 12 ))         # true and true is true
print(nchar("CityU") != 6)                  # 5 != 6 is true
print(class( 3 / 2 ) == class ( 2 < 3))     # numeric == logical is false
print(sprintf("Happy %s", "New Year") == "Happy New Year")  # shoves string into %s to make the same