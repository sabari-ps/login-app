import 'package:flutter/material.dart';
import 'package:login_app/views/widgets/quote_tile.dart';

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          QuoteTile(
            name: "Sundar Pichai",
            quote: "In life, don't react, just respond",
            imgUrl:
                "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
            role: "CEO, Google",
          ),
          QuoteTile(
            name: "Elon Musk",
            quote: "Life is too short for long-term grudges.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f47d4de7637290765bce495%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1699%26cropX2%3D3845%26cropY1%3D559%26cropY2%3D2704",
            role: "CEO, Tesla Motors",
          ),
          QuoteTile(
            name: "Bill Gates",
            quote: "Success is a lousy teacher.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f4ebe0c87612dab4f12a597%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D292%26cropX2%3D3684%26cropY1%3D592%26cropY2%3D3987",
            role: "Co-Founder, Microsoft",
          ),
          QuoteTile(
            name: "Steve Jobs",
            quote: "Innovation distinguishes between a leader and a follower.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5b8576db31358e0429c734e3%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D211%26cropX2%3D2381%26cropY1%3D900%26cropY2%3D3072",
            role: "Co-Founder, Apple",
          ),
          QuoteTile(
            name: "Jack Ma",
            quote: "When I am myself, I am happy and have a good result.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F605e22fe6df966b3fcbd3e15%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D0%26cropX2%3D1080%26cropY1%3D0%26cropY2%3D1080",
            role: "Co-Founder, Alibaba",
          ),
          QuoteTile(
            name: "Tim Cook",
            quote: "Let your joy be in your journey - not in some distant goal.",
            imgUrl:
            "https://pbs.twimg.com/profile_images/1403556543098916872/83tVAzyy.jpg",
            role: "CEO, Apple",
          ),
          QuoteTile(
            name: "Satya Nadella",
            quote: "Our industry does not respect tradition.",
            imgUrl:
            "https://pbs.twimg.com/profile_images/1221837516816306177/_Ld4un5A.jpg",
            role: "CEO, Microsoft",
          ),
          QuoteTile(
            name: "Jeff Bezos",
            quote: "Life’s too short to hang out with people who aren’t resourceful.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5bb22ae84bbe6f67d2e82e05%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D627%26cropX2%3D1639%26cropY1%3D129%26cropY2%3D1142",
            role: "CEO, Amazon",
          ),
          QuoteTile(
            name: "Mark Zuckerberg",
            quote: "I wear the same outfit or, at least, a different copy of it almost every day.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76b7d331358e35dd2773a9%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D0%26cropX2%3D4401%26cropY1%3D0%26cropY2%3D4401",
            role: "CEO, Facebook",
          ),
          QuoteTile(
            name: "Michael S Dell",
            quote: "Try never to be the smartest person in the room.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5efa0fd18e7e930007731112%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1034%26cropX2%3D3701%26cropY1%3D0%26cropY2%3D2667",
            role: "CEO, Dell Technologies",
          ),
          QuoteTile(
            name: "Safra Catz",
            quote: "At Oracle, silver medal is first loser.",
            imgUrl:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F59f23ffc4bbe6f37dda12bca%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1131%26cropX2%3D3371%26cropY1%3D428%26cropY2%3D2667",
            role: "CEO, Oracle",
          ),
        ],
      ),
    );
  }
}
