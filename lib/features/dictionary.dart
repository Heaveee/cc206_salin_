import 'package:flutter/material.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  TextEditingController _searchController = TextEditingController();
  List<DictionaryEntry> _allEntries = [
    DictionaryEntry("Lakat (Hiligaynon) ",
        "In Hiligaynon, which is spoken in the Western Visayas region of the Philippines, the word lakat generally means to walk or walking. It is a verb that describes the action of moving on foot."),
    DictionaryEntry("Sabot (Cebuano)",
        "In Cebuano, the word sabot means understand or agreement. It is commonly used to convey the idea of comprehension or mutual understanding between people."),
    DictionaryEntry("Naimbag a bigat (Ilocano)",
        "In Ilocano, Naimbag a bigat translates to Good morning in English. Naimbag means good, and bigat means morning. Therefore, the phrase is a polite and friendly way of greeting someone in the morning in the Ilocano language."),
    DictionaryEntry("Salamat (Tagalog)",
        "In Tagalog, the word salamat means thank you. It is an expression of gratitude commonly used in everyday conversations to convey appreciation"),
    DictionaryEntry("Maayong buntag (Cebuano)",
        "In Cebuano, the phrase maayong buntag translates to Good morning in English. Maayong means good, and buntag means morning. It is a polite greeting commonly used in the Visayas region."),
    DictionaryEntry("Naimbag a gabi (Ilocano)",
        "In Ilocano, naimbag a gabi translates to Good evening in English. Naimbag means good, and gabi means evening. This phrase is used as a courteous way to wish someone a good evening in the Ilocos region."),
    DictionaryEntry("Pag-asa (Tagalog)",
        "In Tagalog, pag-asa means hope. It is a noun that signifies the optimistic expectation or belief that something positive will happen in the future."),
    DictionaryEntry("Luy-a (Hiligaynon)",
        "In Hiligaynon, luy-a means shy or bashful. It is an adjective used to describe someone who is reserved or hesitant, especially in social situations."),
    DictionaryEntry("Dayaw (Ilocano)",
        "In Ilocano, dayaw means praise or commendation. It is a noun that conveys the act of expressing admiration or approval for someone's achievements or qualities."),
    DictionaryEntry("Timpuyog (Ilocano)",
        "In Ilocano, timpuyog means gathering or assembly. It is a noun that denotes a coming together of people for a specific purpose, such as a meeting, celebration, or event."),
    DictionaryEntry("Kakaiba (Tagalog)",
        "In Tagalog, kakaiba means unique or different. It is an adjective used to describe something that stands out or deviates from the usual, expressing individuality or distinctiveness."),
    DictionaryEntry("Hapit (Cebuano)",
        "In Cebuano, hapit means near or close. It is an adverb used to indicate proximity or the short distance between two locations."),
    DictionaryEntry("Tudlo (Waray)",
        "In Waray, tudlo means finger or to point. It is a noun that represents the digits on the hand or the act of indicating a direction with the hand. Waray is spoken in the Eastern Visayas region."),
    DictionaryEntry("Sika (Ilokano)",
        "In Ilokano, sika means you. It is a pronoun used to address or refer to the second person singular. Ilokano is spoken in the Northern Luzon region."),
    DictionaryEntry("Aga (Hiligaynon)",
        "In Hiligaynon, aga translates to morning. It is a noun representing the early part of the day, typically from sunrise until noon."),
    DictionaryEntry("Palangga (Cebuano)",
        "In Cebuano, palangga means beloved or loved one. It is a term of endearment often used to express affection towards family members, friends, or romantic partners."),
    DictionaryEntry("Ragsak (Ilokano)",
        "In Ilokano, ragsak means happiness or joy. It is a positive emotion often associated with feelings of contentment and satisfaction."),
    DictionaryEntry("Pangluto (Kapampangan)",
        "In Kapampangan, the word pangluto refers to cooking or the act of preparing food. It is derived from the root word luto, which means to cook. Pangluto is often used to describe the process of making delicious dishes in Kapampangan cuisine."),
    DictionaryEntry("Yagaw (Waray)",
        "In Waray, the word yagaw means friend. It is a term used to address or refer to a close companion or buddy. Building and maintaining strong friendships is valued in Waray culture, and the term yagaw reflects the warmth and camaraderie between friends."),
    DictionaryEntry("Salumpuwit (Filipino/Tagalog)",
        "In Filipino or Tagalog, the word salumpuwit literally means to catch or receive with the buttocks. It is a humorous and colloquial expression used to describe sitting down or taking a seat. The word combines salo (to catch) and puwit (buttocks) to create a playful term for sitting."),
    DictionaryEntry("Bailar (Chavacano)",
        "In Chavacano, which is a Spanish-based creole spoken in Zamboanga City, the word bailar means to dance. Chavacano incorporates Spanish words into its vocabulary, and bailar reflects the influence of Spanish culture on dance traditions in the region."),
    DictionaryEntry("Agtatangis (Ibanag)",
        "In Ibanag, the word agtatangis means to cry or weep. It is used to describe the act of shedding tears or expressing sorrow. Understanding emotions and the nuances of language, including terms like agtatangis, is essential for effective communication in the Ibanag-speaking community."),
    DictionaryEntry("Binggoy (Ilonggo/Hiligaynon)",
        "In Ilonggo or Hiligaynon, the term binggoy is an endearing way to refer to a small or cute child. It is often used playfully by parents, relatives, or caregivers when expressing affection towards a young and adorable individual."),
    DictionaryEntry("Bulig (Cebuano)",
        "In Cebuano, the word bulig means help or assistance. It is a versatile term used to convey the idea of providing aid or support to someone in need. Offering bulig is a common value in Cebuano culture, emphasizing community and cooperation."),
    DictionaryEntry("Inamunggay (Ilocano)",
        "In Ilocano, the term inamunggay refers to being blessed or fortunate. It expresses a sense of gratitude and acknowledgment for the positive and favorable aspects of one's life. This word reflects the cultural emphasis on recognizing and appreciating blessings in Ilocano society."),
    DictionaryEntry("Kulit (Filipino/Tagalog)",
        "In Filipino or Tagalog, the word kulit means being persistent or insistent, often in a playful or endearing manner. It is commonly used to describe someone who is teasing or joking around, repeatedly making requests or being playful to elicit a response."),
    DictionaryEntry("Regalo (Tagalog)",
        "In Tagalog, the word regalo means gift. It is used to refer to a present or something given to someone as a token of love, appreciation, or celebration. The act of giving regalo is a common tradition during special occasions and holidays in Filipino culture."),
    DictionaryEntry("Magsaranghaya (Waray)",
        "In Waray, the term magsaranghaya translates to self-confidence or self-assurance. It reflects the positive quality of being secure in oneself and one's abilities. Encouraging individuals to embrace magsaranghaya is valued in Waray culture as it contributes to personal growth and empowerment."),
    DictionaryEntry("Kaldereta (Kapampangan)",
        "In Kapampangan, kaldereta refers to a savory meat stew cooked with tomato sauce, liver spread, potatoes, and bell peppers. It is a flavorful and hearty dish often made with beef, goat, or lamb. Kaldereta is a popular and festive dish in Kapampangan cuisine, showcasing the region's rich culinary traditions."),
    DictionaryEntry("Lambing (Tagalog)",
        "In Tagalog, lambing means affectionate or tender gestures, often expressed through gentle words, caresses, or sweet actions. It represents the act of showing love and care towards someone, be it a family member, friend, or romantic partner. Lambing is an important aspect of building and nurturing relationships in Filipino culture."),
    DictionaryEntry("Magsusundo (Cebuano)",
        "In Cebuano, magsusundo means to fetch or pick someone up, especially using a vehicle. It is a practical and commonly used term when making arrangements for transportation. Whether it's picking up a friend from the airport or fetching a family member from school, magsusundo is a convenient and considerate action in Cebuano culture."),
    DictionaryEntry("Karasa (Ilocano)",
        "In Ilocano, karasa means delicious or tasty. It is a descriptive term used to express the enjoyable and appetizing quality of food. Appreciating good food is a significant aspect of Ilocano culture, and the term karasa reflects the importance placed on culinary satisfaction."),
    DictionaryEntry("Tabi (Bicolano)",
        "In Bicolano, tabi is a versatile term used to request permission, ask someone to move aside, or get someone's attention politely. It is a respectful and considerate way of approaching others in various social situations. Tabi reflects the cultural value of politeness and courtesy in Bicolano interactions."),
    DictionaryEntry("Pakigdait (Waray)",
        "In Waray, pakigdait means peace or peacefulness. It embodies the concept of harmony and tranquility in relationships, communities, and society. Encouraging pakigdait is a shared value in Waray culture, promoting understanding and cooperation for the well-being of all."),
  ];

  List<DictionaryEntry> _filteredEntries = [];

  @override
  void initState() {
    super.initState();
    _filteredEntries.addAll(_allEntries);
  }

  void _filterEntries(String query) {
    setState(() {
      _filteredEntries = _allEntries
          .where(
              (entry) => entry.word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dictionary"),
        centerTitle: true, // Set this to true to center the title
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterEntries,
              decoration: InputDecoration(
                hintText: "Search for a word...",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredEntries.length,
              itemBuilder: (context, index) {
                return _filteredEntries[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DictionaryEntry extends StatelessWidget {
  final String word;
  final String definition;

  DictionaryEntry(this.word, this.definition);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              word,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              definition,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
