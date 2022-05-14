let perStudentPetCount = [1,2,0,3,2,0,0,0,1,2,2,3,4,0,0,1]

let nmberOfStudnets = perStudentPetCount.count


var totalNumberPets = 0

for index in perStudentPetCount {
    totalNumberPets += index
}
print(totalNumberPets)

let averagePets = totalNumberPets / nmberOfStudnets
print(averagePets)
