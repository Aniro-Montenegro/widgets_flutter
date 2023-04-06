import 'package:flutter/material.dart';

class ExpansionListpage extends StatefulWidget {
  const ExpansionListpage({super.key});

  @override
  State<ExpansionListpage> createState() => _ExpansionListpageState();
}

class _ExpansionListpageState extends State<ExpansionListpage> {
  String text1 = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec at enim velit. Sed ligula ligula, tempor nec efficitur ac, pharetra a sapien.
In volutpat lacus turpis, dapibus rutrum justo hendrerit ac.
Aenean lacinia ornare sodales.Donec dapibus blandit mauris tempor lacinia.

Ut feugiat consectetur pulvinar. Curabitur metus tellus,feugiat at mollis id,
condimentum ac leo. Maecenas vel leo eu lacus vulputate blandit vel a mi.
      
Vestibulum et est vestibulum, pretium ligula at, convallis est.
Sed eu augue ut urna pretium facilisis.Sed sed erat ultricies lectus ultricies mattis.
Praesent placerat placerat convallis.Curabitur mattis lectus risus, nec convallis odio
luctus eget.Donec auctor fermentum enim nec eleifend.Quisque lacinia nibh vel commodo egestas.
      
Nulla facilisi. Nunc bibendum tincidunt dui sit amet suscipit.Proin lacinia auctor odio,
in porttitor ex semper faucibus.Phasellus gravida dignissim urna eu consectetur.
Nullam eu rhoncus velit.Integer odio massa, blandit id nulla ut, scelerisque congue
leo.Fusce quis sollicitudin odio. Etiam euismod, enim a pulvinar elementum,ipsum lorem volutpat velit,
at hendrerit ipsum dolor eu lectus.Suspendisse id rhoncus mi, vitae porta felis.

Aenean in tellus sed ex sodales dictum at eu lorem.Pellentesque ligula magna, lobortis sit amet faucibus et,
congue ut dolor.Etiam sed ex a dui congue consequat.Proin porta erat eget sem scelerisque cursus.''';

  String text2 =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at enim velit. Sed ligula ligula, tempor nec efficitur ac, pharetra a sapien. In volutpat lacus turpis, dapibus rutrum justo hendrerit ac. Aenean lacinia ornare sodales. Donec dapibus blandit mauris tempor lacinia. Ut feugiat consectetur pulvinar. Curabitur metus tellus, feugiat at mollis id, condimentum ac leo. Maecenas vel leo eu lacus vulputate blandit vel a mi. Vestibulum et est vestibulum, pretium ligula at, convallis est. Sed eu augue ut urna pretium facilisis. Sed sed erat ultricies lectus ultricies mattis. Praesent placerat placerat convallis. Curabitur mattis lectus risus, nec convallis odio luctus eget.

Donec auctor fermentum enim nec eleifend. Quisque lacinia nibh vel commodo egestas. Nulla facilisi. Nunc bibendum tincidunt dui sit amet suscipit. Proin lacinia auctor odio, in porttitor ex semper faucibus. Phasellus gravida dignissim urna eu consectetur. Nullam eu rhoncus velit. Integer odio massa, blandit id nulla ut, scelerisque congue leo. Fusce quis sollicitudin odio. Etiam euismod, enim a pulvinar elementum, ipsum lorem volutpat velit, at hendrerit ipsum dolor eu lectus. Suspendisse id rhoncus mi, vitae porta felis. Aenean in tellus sed ex sodales dictum at eu lorem. Pellentesque ligula magna, lobortis sit amet faucibus et, congue ut dolor. Etiam sed ex a dui congue consequat. Proin porta erat eget sem scelerisque cursus.

Mauris viverra urna vel arcu aliquam, eu pharetra leo ultrices. Suspendisse ac consequat sapien, non luctus ipsum. Vivamus eros sapien, auctor sed turpis quis, vulputate gravida metus. Donec finibus pretium justo, sed aliquet justo placerat non. Cras semper turpis quis metus commodo viverra. Pellentesque vitae sem consectetur, pretium sapien eget, volutpat tortor. Aenean accumsan viverra pharetra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam consequat aliquam nibh, in luctus mauris consequat nec. Etiam in porta est. Donec nec ante sem. Maecenas sem lorem, aliquet mollis imperdiet eu, maximus vitae nisi. Donec elementum, odio sed dignissim accumsan, massa diam porttitor orci, sed fermentum orci lectus sit amet quam. Curabitur erat enim, consectetur vel luctus ac, ultrices et libero.

Duis rhoncus maximus nisi, eu maximus quam feugiat id. Phasellus iaculis mauris nibh, ut suscipit justo varius nec. Nulla aliquet erat et erat elementum fringilla. Sed mi orci, pellentesque a egestas sit amet, rutrum ultricies mi. Sed vehicula quam nec ligula ullamcorper cursus. Aliquam non luctus tortor. Aenean accumsan, eros ac sodales scelerisque, risus sem sagittis quam, eget varius mauris urna id massa. Nunc viverra quam congue justo aliquet, sed accumsan nulla laoreet. In porta sagittis ex, eu pulvinar elit aliquet in. Nulla et tellus ac quam aliquet ultricies at at risus. Nulla a arcu eget nulla feugiat suscipit id et urna. Nullam at rhoncus massa, vel ultrices purus.

Donec ac neque vitae sapien varius elementum viverra ac sapien. Praesent ligula lorem, efficitur sodales turpis egestas, ultricies bibendum justo. Cras feugiat tellus vel cursus varius. In facilisis varius porttitor. Morbi aliquam arcu vel elit vestibulum molestie. Duis sollicitudin ipsum id velit posuere vestibulum. Cras consequat augue nisi, in laoreet dui egestas sit amet. Phasellus sollicitudin mollis elit sit amet accumsan. In vel interdum nunc..''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion List'),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text('Expansion Tile'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  text1,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: const Text('Expansion Tile'),
                maintainState: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      text2,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
