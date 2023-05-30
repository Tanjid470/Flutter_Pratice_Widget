import 'package:flutter/material.dart';

class UI2 extends StatefulWidget {
  const UI2({Key? key}) : super(key: key);

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'tanjidamran',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    isDismissible: false,
                    enableDrag: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    backgroundColor: Colors.grey.shade800,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Settings',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.settings),
                            minLeadingWidth: 2,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          ListTile(
                            title: Text(
                              'Your activity',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.timelapse_rounded),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Archive',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.av_timer_rounded),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'QR code',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.qr_code_scanner_outlined),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Saved',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.save),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Close friends',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.mail_lock_outlined),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Favourite',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.star_border),
                            minLeadingWidth: 2,
                          ),
                        ],
                      );
                    });
              },
              icon: Icon(Icons.drag_handle)),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: w,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-1/340620783_890937765345876_7740305824492697715_n.jpg?stp=c0.67.200.200a_dst-jpg_p200x200&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeF6tT1opXXQtFSszHmRwfd-mfhdIDO1-AGZ-F0gM7X4AXVZfXq_8macttirwhYgB5DWFG1xKzhG_sUO-5wOz6Je&_nc_ohc=ZJdo8eztT1cAX-1wECG&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCrVrxMNSDGpP93niWA2BW3kA71SuXDsF8wnigjxPRrqQ&oe=647BFF85'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 120,
                    width: 80,
                    child: Center(
                      child: ListTile(
                        title: Text(
                          '147',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Posts'),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 90,
                    child: Center(
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text(
                          '4281',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Follower'),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 95,
                    child: Center(
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text(
                          '240',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Following'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
                // color: Colors.red,
                width: w,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '   Tanjid Emran',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 3,
                      width: 5,
                    ),
                    Text(
                      '    Be your self,No one else',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
            Container(
              //color: Colors.green,
              height: 40,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 32,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  Container(
                    height: 32,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Share Profile',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  Container(
                    height: 32,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      onPressed: () {},
                      child:
                          Icon(Icons.person_add, color: Colors.white, size: 22),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: w,
              alignment: Alignment.topLeft,
              //color: Colors.white,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border: Border.all(color: Colors.blue, width: 2),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/243011300_1153216221872068_8286920407913362053_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeH7x4D4TkQEER2mwshjtwddsBKySn3knlOwErJKfeSeU0hPJIUGiiHaQ5W5PbN1OpamZ7Vvre5qkM9fmb1nTdyN&_nc_ohc=jGFyGJHaspIAX_NoTCe&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCP_5yaoKlXlAWpHFE57d_a6G_-tKejsmOe5D9GwE74eA&oe=647A35B3'))),
                  );
                },
              ),
            ),
            Container(
              child: TabBar(controller: _tabController, tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_on_outlined,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.video_collection_rounded, size: 30),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined, size: 30),
                ),
              ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Container(
                 // color: Colors.blue,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,

                 ),
                    children: <Widget>[
                     Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/273473730_1238536990006657_7261586736836067376_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=105&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeFdI07L62tdkDq0lzfJ0R29HFj-nzl5D4ocWP6fOXkPihQDOz_NoXIBpv3Dd5dVqnOArvVXxYMYY2A_f7p4rCYq&_nc_ohc=5jrjcKsAQpwAX89rYwS&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDQxouY_rf4rvFZDZfQVfGR5knWP6s-QudpfurMYfUtLQ&oe=647B6B5F'))),
                     ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                    Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/241640736_1143078172885873_8568597862960059144_n.jpg?stp=c34.0.206.206a_dst-jpg_p206x206&_nc_cat=109&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeFIoX3pzt6mxWd__g3ndBUPsM1begegv9SwzVt6B6C_1HxrGzke_29Y9UyAxkNdvPjdVSqO1Qcc8aVRuAjM0R92&_nc_ohc=2jlPTPe4ZtUAX-1yvRl&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCH0LSMWrGDB-NvXMaCKzLtZlUdLRneBNk6CS-7l8FOsA&oe=647BF33E'))),
                     ),  Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/312810137_1412188789308142_8312086945946955501_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=103&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeGTpoL_Dqb8QkA2Oho6-bvfi__21lay-qGL__bWVrL6odc5c8ZSZJqgzN-2BugwtVWXfBnEZ8C_iZ2ijQ8Rcm3v&_nc_ohc=4Eq1yNj-2cgAX8w4UoZ&_nc_ht=scontent.fdac99-1.fna&oh=00_AfC3Sxy3a5uEqUmqhqV9VWomjSsUcisbt_JXgzwbeB-dVA&oe=647AD538'))),
                     ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/311153363_1412188849308136_1953401692670071546_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=104&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeH9DQf317kkp5nyFPhTw8Ks70wIjgOCBkPvTAiOA4IGQ9u603p2BDt42FzlNmZcExSq1dKnuPB1Cil6iO4E57xq&_nc_ohc=kSQiWJJ7TAMAX9e6gZR&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDZwDkn3iLW5VON_klofU8Re4OP45ZsrgnI9oxXu3znGg&oe=647BC435'))),
                      ),Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/279709376_1290508248142864_276493607533187740_n.jpg?stp=dst-jpg_p206x206&_nc_cat=106&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeEN9U4d9lhDTv6uoWzq3cBQYtOu9blzMJRi0671uXMwlJegIaNg--LY-aatRHIMGV6krRfYyaMo30Esi6u3IDvK&_nc_ohc=kk0fYZfbKIcAX9XIUPI&_nc_ht=scontent.fdac99-1.fna&oh=00_AfBUQgQww7CLIKhWMKkNrBPX9YA3xcNxCncmS1YmHZaUAw&oe=647B0E25'))),
                     ),  Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/311153363_1412188849308136_1953401692670071546_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=104&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeH9DQf317kkp5nyFPhTw8Ks70wIjgOCBkPvTAiOA4IGQ9u603p2BDt42FzlNmZcExSq1dKnuPB1Cil6iO4E57xq&_nc_ohc=kSQiWJJ7TAMAX9e6gZR&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDZwDkn3iLW5VON_klofU8Re4OP45ZsrgnI9oxXu3znGg&oe=647BC435'))),
                     ),  Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                     ),  Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/320953479_1836222553407951_4672141948119892263_n.jpg?stp=c0.53.206.206a_dst-jpg_p206x206&_nc_cat=101&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeECUxqTOAlILc28_4_RhDdEgGtA9j74EoCAa0D2PvgSgKhbeBD2OvfvS7FXk0VaRqZgltrDWOb1xWffE6BaqT5_&_nc_ohc=oEyPdEjC-FoAX_8GksT&_nc_ht=scontent.fdac99-1.fna&oh=00_AfAPS_s5gonhsfjakN6kGkyyUqkYXL8n0sFIE0poGoXy5Q&oe=647A09FF'))),
                     ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/86473890_747011365825891_9077007411197247488_n.jpg?stp=c34.0.206.206a_dst-jpg_p206x206&_nc_cat=101&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeGah3-TwWOR3OCAX00AnB6n-9oNs2k3z4P72g2zaTfPg1JXPpETKmOwjzARKl4vgbniCSysd61VA3qrX5KiflC5&_nc_ohc=dvw9yMMXccUAX--QT7P&_nc_ht=scontent.fdac99-1.fna&oh=00_AfBJjC6SWUixsGi9eRkfZB0kNNsdsdDvNlyKhspCNUl2bg&oe=649D78B4'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/312810137_1412188789308142_8312086945946955501_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=103&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeGTpoL_Dqb8QkA2Oho6-bvfi__21lay-qGL__bWVrL6odc5c8ZSZJqgzN-2BugwtVWXfBnEZ8C_iZ2ijQ8Rcm3v&_nc_ohc=4Eq1yNj-2cgAX8w4UoZ&_nc_ht=scontent.fdac99-1.fna&oh=00_AfC3Sxy3a5uEqUmqhqV9VWomjSsUcisbt_JXgzwbeB-dVA&oe=647AD538'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/273473730_1238536990006657_7261586736836067376_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=105&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeFdI07L62tdkDq0lzfJ0R29HFj-nzl5D4ocWP6fOXkPihQDOz_NoXIBpv3Dd5dVqnOArvVXxYMYY2A_f7p4rCYq&_nc_ohc=5jrjcKsAQpwAX89rYwS&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDQxouY_rf4rvFZDZfQVfGR5knWP6s-QudpfurMYfUtLQ&oe=647B6B5F'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/273473730_1238536990006657_7261586736836067376_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=105&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeFdI07L62tdkDq0lzfJ0R29HFj-nzl5D4ocWP6fOXkPihQDOz_NoXIBpv3Dd5dVqnOArvVXxYMYY2A_f7p4rCYq&_nc_ohc=5jrjcKsAQpwAX89rYwS&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDQxouY_rf4rvFZDZfQVfGR5knWP6s-QudpfurMYfUtLQ&oe=647B6B5F'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/241640736_1143078172885873_8568597862960059144_n.jpg?stp=c34.0.206.206a_dst-jpg_p206x206&_nc_cat=109&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeFIoX3pzt6mxWd__g3ndBUPsM1begegv9SwzVt6B6C_1HxrGzke_29Y9UyAxkNdvPjdVSqO1Qcc8aVRuAjM0R92&_nc_ohc=2jlPTPe4ZtUAX-1yvRl&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCH0LSMWrGDB-NvXMaCKzLtZlUdLRneBNk6CS-7l8FOsA&oe=647BF33E'))),
                      ),  Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/312810137_1412188789308142_8312086945946955501_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=103&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeGTpoL_Dqb8QkA2Oho6-bvfi__21lay-qGL__bWVrL6odc5c8ZSZJqgzN-2BugwtVWXfBnEZ8C_iZ2ijQ8Rcm3v&_nc_ohc=4Eq1yNj-2cgAX8w4UoZ&_nc_ht=scontent.fdac99-1.fna&oh=00_AfC3Sxy3a5uEqUmqhqV9VWomjSsUcisbt_JXgzwbeB-dVA&oe=647AD538'))),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/311153363_1412188849308136_1953401692670071546_n.jpg?stp=c0.23.206.206a_dst-jpg_p206x206&_nc_cat=104&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeH9DQf317kkp5nyFPhTw8Ks70wIjgOCBkPvTAiOA4IGQ9u603p2BDt42FzlNmZcExSq1dKnuPB1Cil6iO4E57xq&_nc_ohc=kSQiWJJ7TAMAX9e6gZR&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDZwDkn3iLW5VON_klofU8Re4OP45ZsrgnI9oxXu3znGg&oe=647BC435'))),
                      ),Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/279709376_1290508248142864_276493607533187740_n.jpg?stp=dst-jpg_p206x206&_nc_cat=106&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeEN9U4d9lhDTv6uoWzq3cBQYtOu9blzMJRi0671uXMwlJegIaNg--LY-aatRHIMGV6krRfYyaMo30Esi6u3IDvK&_nc_ohc=kk0fYZfbKIcAX9XIUPI&_nc_ht=scontent.fdac99-1.fna&oh=00_AfBUQgQww7CLIKhWMKkNrBPX9YA3xcNxCncmS1YmHZaUAw&oe=647B0E25'))),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Maintaince',
                      style: TextStyle(fontSize: 50,color: Colors.lightGreenAccent),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Maintaince ',
                      style: TextStyle(fontSize: 50,color: Colors.red),
                    ),
                  ),
                ),
              ]),
            )


          ],
        ),
      ),
    );
  }
}
