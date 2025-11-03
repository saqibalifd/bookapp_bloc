import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class PreviewView extends StatelessWidget {
  const PreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingColorComponent(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: context.mediaQueryHeight * .11,
          centerTitle: true,
          forceMaterialTransparency: true,
          title: Column(
            children: [
              30.height,
              Text(
                'Atomic Habits',
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                  fontSize: 18,
                ),
              ),
              Text('James Clear', style: theme.textTheme.bodyLarge),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: context.mediaQueryWidth * .05,
            right: context.mediaQueryWidth * .05,

            top: context.mediaQueryHeight * .03,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Text(
              'Pencey  is   Holden’s  fourth  school; he has already failed out of three others.At  Pencey, he has  failed fourb he has already failed out of three others.At  Pencey, he has  failed four  out  of  five of  his classes and  has  received notice   that   he is   being expelled,  but  he  is  not scheduled  to return home  to  Manhattan  until  Wedne-sday. He visits his  elderly history teacher, Spencer, to say   goodbye,  but    when  Spencer  tries  to reprimand him  for his poor  academic perfo rm ance, Holden becomes annoyed. Back in the dorm itory,  Holden is further  irritated by his unhygienic neighbor, Ackley, and by his own  roommate,  Strad later.Stradlater  spends   the  evening   on a  date with   Jane  Gallagher, a   girl  whom  Holden used  to  date  and  whom  he   still  admires. During  the   course  of  the   evening, Holden grows increasingly nervous about Stradlater ’s   taking   Jane   out,   and   when Stradlater returns,  Holden   questions   him  insist ently about whether he tried to  have sex with her. Stradlater   teases  Holden,  who  flies  into  a rage and attacks  Stradlater. Stradlater pins Holden down and  bloodies his nose. Holden decides   that  he’s  enough  of  Pencey  and  will goand bloodies his nose.Holden decides that  he’s  enough  of  Pencey  and  will go and  bloodies his nose. Holden decides  that  he’s  enough  of  Pencey  and  will go   ',
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
