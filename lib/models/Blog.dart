class Blog {
  final String date, title, description, image;

  Blog({
    this.date,
    this.title,
    this.description,
    this.image,
  });
}

List<Blog> blogPosts = [
  Blog(
      date: "22 Março 2021",
      image: "assets/images/0.png",
      title: "Como comecei minha jornada como Dev?",
      description: "Aqui eu explico como virei fã do mundo mobile"),
  Blog(
      date: "30 Maio 2021",
      image: "assets/images/1.png",
      title: "Híbrido ou Nativo?",
      description: "Kotlin, cobol, rust ou portugol?"),
  Blog(
      date: "2 Abril 2021",
      image: "assets/images/3.png",
      title: "Espaço sideral",
      description: "Aqui eu explico como virei fã do mundo mobile"),
];
