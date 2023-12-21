import Authentication from 0x05

pub fun main(employeeId:UInt64): Authentication.compProfiles {
    return Authentication.companyProfile[employeeId]!
}
