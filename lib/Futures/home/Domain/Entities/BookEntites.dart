class BookEntities {
  final String title;
  final String Auther;
  final String detailes;

  BookEntities(this.title, this.Auther, this.detailes);
}

//ايه الفرق بين entities وmodel
//model هوه بيحول داتا من json الي dart بيتعامل مع api
//entities هوه ملوش دعوه باي حاجه بعرف فيه شويه المتغيرات الي محتاجها في الصفحه وخلاص
