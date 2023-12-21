pub contract Authentication {
    pub var companyProfile: {UInt64: compProfiles}
    
    pub struct compProfiles{
        pub let firstName: String
        pub let lastName: String
        pub let salary: Int
        pub let age: Int
        pub let employeeId: UInt64 
        
        // You have to pass in 4 arguments when creating this Struct.
        init(_firstName: String, _lastName: String, _salary: Int,_age:Int, _employeeId: UInt64) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.salary = _salary
            self.age=_age
            self.employeeId = _employeeId
        }
    }

    pub fun addProfile(firstName: String, lastName: String, salary: Int,age: Int, employeeId: UInt64) {
        let newProfile = compProfiles(_firstName: firstName, _lastName: lastName, _salary: salary,_age:age, _employeeId: employeeId)
        self.companyProfile[employeeId] = newProfile
    }

    init() {
        self.companyProfile = {}
    }

}
