var Name;
(function (Name) {
    function getContent(name) {
        return name;
    }
    Name.getContent = getContent;
    var Surname;
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
