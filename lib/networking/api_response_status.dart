import '../data/models/breeds_search_results_model.dart';

class ApiResponse<Cats> {
  Status? status;
  Cats? data;
  List<BreedSearchResultModel>? breedSearchData;
  Map<String, String>? catBreedNameData;
  String message = '';

  ApiResponse.loading(this.message) : status = Status.loading;
  ApiResponse.completedCat(this.data) : status = Status.completed;
  ApiResponse.completedBreed(this.catBreedNameData) : status = Status.completed;
  ApiResponse.completedImageBreedSearch(this.breedSearchData) : status = Status.completed;
  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { loading, completed, error }
