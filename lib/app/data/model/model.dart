class MyModel {
  // MyModel 클래스
  late int id; // id 멤버 변수 정의
  late String title; // title 멤버 변수 정의
  late String body; // body 멤버 변수 정의

  MyModel({id, title, body}); // MyModel의 생성자

  MyModel.fromJson(Map<String, dynamic> json) {
    // Json 데이터를 MyModel 객체로 변환하는 정적 팩토리 메소드
    id = json['id']; // json 데이터에서 'id' 필드를 가져와 id에 대입
    title = json['title']; // json 데이터에서 'title' 필드를 가져와 title에 대입
    body = json['body']; // json 데이터에서 'body' 필드를 가져와 body에 대입
  }

  Map<String, dynamic> toJson() {
    // MyModel 객체를 Json 데이터로 변환하는 메소드
    final Map<String, dynamic> data = <String, dynamic>{}; // 변환할 Json 데이터를 담을 빈 Map 생성
    data['name'] = title; // MyModel 객체의 title 값을 'name' 필드에 대입
    data['body'] = body; // MyModel 객체의 body 값을 'body' 필드에 대입
    return data; // Json 데이터가 담긴 Map 반환
  }
}
