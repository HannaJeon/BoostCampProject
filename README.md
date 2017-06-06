# BoostCampProject_iOS - 전한나

### MVC 패턴을 적극 활용
- Model
  - ModelStudents
  - ModelResultTable

- Controller
  - JsonSerialization
  - CheckStudents

- View
  - Output

### 개발 흐름
1. JsonSerialization Class로 json serialization하여 ModelStudents Class 인스턴스로 데이터 활용
2. ModelStudents Class를 인스턴스를 활용하여 CheckStudents Class로 성적표로 변환
3. CheckStudents에서 변환 된 성적표를 ModelResultTable 클래스를 활용하여 데이터 활용
4. ModelResultTable 데이터와 Output 클래스를 활용하여 텍스트 파일로 출력

### 개발환경
- Xcode 8.3.2
- Swift 3.1
