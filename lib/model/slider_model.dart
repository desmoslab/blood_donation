class SliderModel{
  String? image;
  String? title;
  String? description;


// Constructor for variables
  SliderModel({this.title, this.description, this.image});

  void setImage(String getImage){
    image = getImage;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }
  void setDescription(String getDescription){
    description = getDescription;
  }

  String getImage(){
    return image!;
  }

  String getTitle(){
    return title!;
  }
  String getDescription(){
    return description!;
  }
}


// List created
List<SliderModel> getSlides(){
  List<SliderModel> slides = [] ;
  SliderModel sliderModel = new SliderModel();

// Item 1
  sliderModel.setImage("assets/images/logo_i-am-the-hero.png");
  sliderModel.setTitle("I'M A HERO");
  sliderModel.setDescription("Be a bold donor, be a HERO a Real one");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// Item 2
  sliderModel.setImage("assets/images/blood_donate.png");
  sliderModel.setTitle("Donate to others");
  sliderModel.setDescription("Blood donation is a voluntary procedure that can help save the lives of others. There are several types of blood donation. Each type helps meet different medical needs.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// Item 3
  sliderModel.setImage("assets/images/find_donor.jpeg");
  sliderModel.setTitle("Find Donors");
  sliderModel.setDescription("Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  // Item 4
  sliderModel.setImage("assets/images/chat.jpeg");
  sliderModel.setTitle("Chat Directly");
  sliderModel.setDescription("Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document. ");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}

