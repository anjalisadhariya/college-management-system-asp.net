mydict={
            1:"sunday",
            2:"monday",
            3:"tuesday",
            4:"wednesday",
            5:"thursday",
            6:"friday",
            7:"saturday"
        }
i=int(input("enter weekday no:" ))
print(i,"day is:",mydict.get(i,"invalid day"))
