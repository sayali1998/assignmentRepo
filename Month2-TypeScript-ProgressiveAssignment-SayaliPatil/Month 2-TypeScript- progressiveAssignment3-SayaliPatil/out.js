var Name;
(function (Name) {
    function getContent(name) {
        return name;
    }
    Name.getContent = getContent;
    let Surname;
    (function (Surname) {
        function getContent(surname) {
            return surname;
        }
        Surname.getContent = getContent;
    })(Surname = Name.Surname || (Name.Surname = {}));
    function AgeCalc(year) {
        return 2020 - year;
    }
    Name.AgeCalc = AgeCalc;
})(Name || (Name = {}));
///<reference path = "./Name.ts"/>
let age = Name.AgeCalc(1998);
console.log("Student Profile:  \nName : " + Name.getContent('Sayali') + "\nSurname : " + Name.Surname.getContent('Patil') + "\nAge : " + age);
