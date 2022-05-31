import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  Color color = Colors.grey;
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  List img = [
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/278388121_5352080134851021_8150601852186054781_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=xpEq-HOhaQcAX8LJRMu&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-3pmdjJfYLB3SSJHNha2ju7-0V5OXgdwc81WbXLPQTqA&oe=626A39EE",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/278076657_5328308740561494_8561067434962465632_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=dvisfEfcu5MAX8iGUGT&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8VldE0hUezCOPlNdLlRkP5yWf_9V0gXFPMhXPvVN0NnQ&oe=626A9B30",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/278061821_5325080697550965_423700503126380796_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=9267fe&_nc_ohc=Ao6LNnzgMtkAX8957eu&tn=fWFTjgIJrFE7iOU1&_nc_ht=scontent.fcai19-1.fna&oh=00_AT85xRpcqzpiL-iTTuED4v3MRbtKVux1i0P-tJqWXqAQvQ&oe=6269367C",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/277174754_5290801214312247_6780822755325592282_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=SCphgZSy3KMAX-fyBPl&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-Cff5gSkc9t5VzsqZY1CWvz7Wr8Hk9SITcBPhAeOWr-g&oe=6268C680",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/276273439_5284577838267918_2801334015498606455_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=vP-lS__4RfkAX8zgJDU&tn=fWFTjgIJrFE7iOU1&_nc_ht=scontent.fcai19-1.fna&oh=00_AT_L3fojdx83MAgUyEfacJ_aPeIqYC7JOvOjeStRtiXBPA&oe=6268CD46",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/244747959_4731177823607925_6904816312469389504_n.png?_nc_cat=110&ccb=1-5&_nc_sid=e3f864&_nc_ohc=fG8ZmhL2QEMAX_sFyvv&tn=fWFTjgIJrFE7iOU1&_nc_ht=scontent.fcai19-1.fna&oh=00_AT_Y20Tl37ktKyci801Ff2XyG2-cBh7qYzorxsjxzdd2PQ&oe=6268FF56",
    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/242276000_4677348635657511_1703096003957234384_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=e3f864&_nc_ohc=4iUkVD3ckgsAX9yNQuf&tn=fWFTjgIJrFE7iOU1&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-B7H60naP9T11s0kv48YCCyoWmFD3PypNq-SxI_gtUOg&oe=626A0BE5"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(children: const [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 230, 10, 238)),
              accountName: Text("Ahmed Megahed"),
              accountEmail: Text("ahmedmegahed9257@yahoo.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-1/244536453_2041547902667752_6460570467582873751_n.jpg?stp=dst-jpg_p160x160&_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=g88eKv1RknkAX8tmdIS&_nc_ht=scontent.fcai19-1.fna&oh=00_AT9mW8-xUcjdlFXwcFmG_tzXs-4bEH_tqYeBEnYOWqm_Tg&oe=626A5818"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/263427410_2088796561276219_4134726662773686325_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=pJZdLNvQqzwAX-zBjLr&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-xn_d-eWEHsKL5rbtHeQhW_W_9lFIoWNVr7JyJRGVGIA&oe=6269A798"),
                ),
              ],
            ),
            ListTile(
              title: Text("Setting"),
              subtitle: Text(
                  "A particular setting is a particular place or type of surroundings where something is or takes plac"),
              trailing: Icon(Icons.settings),
            ),
            Divider(),
            ListTile(
              title: Text("Favorite"),
              subtitle: Text(
                  "one that is treated or regarded with special favor or liking"),
              trailing: Icon(Icons.favorite),
            ),
            Divider(),
            ListTile(
                title: Text("Chat"),
                subtitle:
                    Text("to take part in an online discussion in a chat room"),
                trailing: Icon(Icons.chat_bubble_outline_rounded)),
            Divider(
              height: 50,
            ),
            ListTile(
                title: Text("LogOut"),
                subtitle: Text(
                    " to terminate a connection with a computer or system "),
                trailing: Icon(Icons.logout))
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 205, 11, 223),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "My HomePage"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
            ]),
        appBar: AppBar(
          title: const Text("My Home Page"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 186, 12, 221),
          actions: const [Icon(Icons.home)],
        ),
        body: ListView.builder(
            itemCount: img.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Stack(children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            img[index].toString(),
                            height: 500,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          color: color,
                          onPressed: () {
                            setState(() {
                              color = Colors.red;
                            });
                          },
                          icon: const Icon(Icons.share),
                        ),
                        IconButton(
                            color: color1,
                            onPressed: () {
                              setState(() {
                                color1 = Colors.red;
                              });
                            },
                            icon: const Icon(Icons.comment)),
                        IconButton(
                            color: color2,
                            onPressed: () {
                              setState(() {
                                color2 = Colors.red;
                              });
                            },
                            icon: const Icon(Icons.favorite))
                      ],
                    )
                  ],
                ),
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 214, 124, 214),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
              );
            }),
      ),
    );
  }
}
