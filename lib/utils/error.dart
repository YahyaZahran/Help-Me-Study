class ApiFormError 
{
  final List<ApiInvalidField> invalidFields;

  ApiFormError(this.invalidFields);

  factory ApiFormError.fromJson(Map data)
  {
    var ret = <ApiInvalidField>[];
    data.forEach((key, value) { 
      ret.add(ApiInvalidField(key,List<String>.from(value)));
    });
    return ApiFormError(ret);
  }
}


class ApiInvalidField
{
  final String fieldName;
  final List<String> errorMessages;

  ApiInvalidField(this.fieldName, this.errorMessages);

  
}