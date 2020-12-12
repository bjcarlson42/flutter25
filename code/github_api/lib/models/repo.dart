class Repo {
  String name;
  String htmlUrl; // hmtl_url
  int stargazersCount; //stargazers_count
  String description;

  Repo({this.name, this.htmlUrl, this.stargazersCount, this.description});

  factory Repo.fromJson(Map<String, dynamic> json) {
    return Repo(
      name: json['name'],
      htmlUrl: json['html_url'],
      stargazersCount: json['stargazers_count'],
      description: json['description'],
    );
  }
}

class All {
  List<Repo> repos;

  All({this.repos});

  factory All.fromJson(List<dynamic> json) {
    List<Repo> repos = new List<Repo>();
    repos = json.map((r) => Repo.fromJson(r)).toList();
    return All(repos: repos);
  }
}
