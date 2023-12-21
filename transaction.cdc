import Authentication from 0x05

transaction(firstName: String, lastName: String, salary: Int,age: Int, employeeId: UInt64){
    
    prepare(signer: AuthAccount){}

    execute{
        Authentication.addProfile(firstName: firstName,lastName:lastName,salary:salary,age:age,employeeId:employeeId)
        log("successfully new profile is added!!!!!")

    }
}        
