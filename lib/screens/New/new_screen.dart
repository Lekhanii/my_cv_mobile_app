import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Course {
  final String image;
  final String name;

  Course({required this.image, required this.name});
}

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  List<Course> courses = [
    Course(
      name: 'Flutter Framework',
      image:
          'https://raw.githubusercontent.com/flutter/website/master/src/_assets/image/flutter-logomark-320px.png',
    ),
    Course(
      name: 'Python Programming',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png',
    ),
    Course(
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png',
      name: 'React.js',
    ),
    Course(
      image:
          'data:image/jpeg;base64,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',
      name: 'JavaScript',
    ),
    Course(
      image: 'https://upload.wikimedia.org/wikipedia/commons/1/19/C_Logo.png',
      name: 'C Programming',
    ),
    Course(
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/1822px-ISO_C%2B%2B_Logo.svg.png',
      name: 'C++ Programming',
    ),
    Course(
      image:
          'https://miro.medium.com/v2/resize:fit:792/1*lJ32Bl-lHWmNMUSiSq17gQ.png',
      name: 'HTML CSS',
    ),
    Course(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGWU2hdMYdyWmv2xG32DbUPG1HRKRApNcP9Q&s',
      name: 'Java Development',
    ),
    Course(
      image:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQMAAADCCAMAAAB6zFdcAAAA/1BMVEX///9AQjeCzSpAQjX///3//v9AQTg+QDX9//7///u2trTr6+X8/PwxMyYxNCVAQjQ1NywpKiKgoZz7//Lh9cfh9M7z8/L///d7zB602oCBzih+xhzU7bSXyVh8xyP/+//3/eg6OzSOyUSKxTiExChJS0ItMCAxMimur6nj5N9kZV/NzczS66uVyEo4Oi1yc2x+f3ra29eMjYhXWFDz/e6lpqHM4rfs/+i73Zeiz2TJ5pnDxL/v+9uq1IF9zQm52YmhzGyezmGs0XTU6bXD4aDM66KJvT2/4oaCvR8cHhCi2GaHxUzh79GIiYNQUkbb9rnX182QvkUiJRCp2W8JDgCEn19CAAANj0lEQVR4nO2cDXuayBbHQWaUiRhFxEGIgIqSNGpqXq5JpTFp0m53227b3fv9P8s9gzFCBGO6bbPP7fk/T3cbA87Mb87bvOxKEgqFQqFQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhUKhUL+8NE38oc/djWeVRupnTNKeuxvPKlrWw/4OIeS5O/KcKodKKTyZPHc3nlXlSlVRSvrRwXN35BlV3lWKsiyPK8flXzYs3DGQ5Vp4xn5RCPcM5GLYb/6aprBiICuDnefuzfNoxUBRdnd+eTuQK7+8HSADZIAMkAEySDLYRQbIABkgA2SAeeH/h8HdpujTt0Z/JAOy6tnTOkZIvOdPtt7UIRReoR6lVOVs67bgcU2D/m0fD8TjW349JYwzTWWcM4mr8U9PnB3C9uuTrckxDsMxzP9E0CLdvikYPRP/Lle2ZcDY4bYbryqB0TN1et6+eHVKKfxV3bZfkoCtSbNiZawfN6WtNjRU1aM8eu1eBvNIItvZDtWIdPBi0J8Biq3sQBMWvdPRoVexlT4mJlFPNW57VsFyRjecet6TIEiTF3pRVpRabWeb1iTCyXQe2IVCwe29Ot2qJfja5rE+lov6i8l2dgBvfHkRFuVSLdwn0uMnc4xK/l47cAuOU7Cdq4axnYGSmLbUfFkpFUGyrIQnh1J+MCFxU5RIfNh2LcHAAuZ7MANUhVmjGzu63wllBVoZV47Pxptj4iIENF/qpbuN17hXWla3xGciOFFGiXkVQH+uzMbIsa1gPhXk4nCyIaSISKgxdrY7XnZIVqr6UZnlGYPKGNOYxkVjhVi2bbvulalBLFJVNa8p+L7DfkVZtjFetZfDgEHX6oPVY6XB0YH4NBsXg/Ez1Z9Dp9wPQ4MwHzzCtrp7Bidgs+ASjxjErB+WlBUDudTR680ccgQYeNK0FTixESxlua3IkzYFoYMjPdFISjm5cdavpR4bh9CrbBGiMskY9txC0DufqpRrlJutnm077T0OcQhCZb6BxlEqLD7sVbFW3JGybIFBMlSBsWPbYAZLCmAKttUbGtyjLLMRwo4rY4g22QzW40FTg/hUqaYfg2AV92odADiixxvX4JtBK4LsQES6pqxxDRMVvIk41SB55TIQUUpZ6xt8UBIOSNfaE1Fn2HXE4JNmYMMPrjX6bLAsBhLZ6dRK2ePPZiACwTjjyVIl45gWGDAevQlsy7k2BSKoCzjxwF75zcgpWMF5ZFApu2MwzWy/VlOUNQjxzyX9ZTnlEESkHta4ChZjfsjALtjBlckpTMLqnZji4Um4sK4cBmu+QM7CmlJae17kLegVuOnD2Hg6h04FoxtDoiI6ExEiGUQCFifKYPTWz44HkNQP/6zkzw444G49Oa8iGJrznp0cfFqW824eEcpXvgcIykeDDTawzkAT8SnPbQBEJzxjqYKE8rdfXZiA3/zVlNFlZiNRC1zEaTe4yBBrDJpH+ubOKXKtc5hAIAFV17JyERRsaO3rHkswgNiud+SnMCAHolCRcxnIxWIoqqzE3Jw7l45zFSXDF1kI/METYQGMZE/Kyipn+uauCZX691Uj1N+N9/njv6NQKDiRtzIeBgE3zwWyGbB+Z9Ozxdghfk9Wz1PIgtem4WlMuq8DqAjE2oIC5Tfdgt3m4PprDI5r+bCXqsr3cFXK9tx8P1jZgqmtAkJZf5TAAwZNPTd/LBlUlUrSEBqB/QesDkhsfvfeIBZOJF5GgedE3csPflZmqNeSjYnAKBJ4qs9KqZhgQIABRIMNHOLa2UzQLuvp8dwF4DSYhwzkVLeKRahgU1gUwWDhb2LIDddqiRkn1NNu9j5CqUCNRuu63b5+8+ojh9pNo8a13fM1tl7BHdeSCaEK3l88gWIp1emSnGLgPGoGUKebiWSyzmCsQ5pMf7j7kEHqhepAFvd2Uh/uLu1gyWBRAjH/vdWDuAWVsgUVi2W5wVUEIZoabWDgMXUtQaYZyDUow8jhye4PZdDRP5XP9NqWDMAyi6Eyg/yVLuNWvpBmQPye3eXM7F3aTtDrBrBmsK58qKNzGdSTDOJqAB5h+6Vkhfp9GZTEipEsVkKJQeUzKNU6Z3FK2+8kHTePAfV7Vpfz60t3dBP5p1PzPLCcVxqXchmcJRiU/pxA1NRgoQKVY6Jo+K4MavKMiTUakSYnycLkAYMVHWUXJkbyI0PSmse7CTZ/fclhEFgjAv/ofdY8WEV5xjy4HBlePoN7O4CIMygnfnGUWK0lGJB/xqA6Pk60sT/O2T9IMtjdlzwj+hsqHBjHLFx+PNbvv2mNAfhC1Lt811DFlp3HzXfOu8jbwheKSrWS+JzUsxmwf8ggmdC08iCXwWq+BxNq3AZQlsHCh03iX4hqGRxq2as1BoUu8d9ZwWhoRgZYNfv4cWrw7RjUUr/48QykJIO13JhgEL2Deh/WPQ1pMog7VCnOFmVgHgPG5u6lBTFxdNEamr60MS/kMKD/HgbhRIp6cTkSmNIBMCiJPQQSLw1ZHgNO/XlvUcgAifb5lG7pCz+egbLGYOX2eQz0L5LfixelToNMKndLWYjc+QzsrkEhDMzb3UA4EejiVNsmNyrV8GczONBXuS7fF75I069iQu334Au/L/YUU7pnIN0zgJKZUW6cRo2bV1c9qFv3pH8LA7m6m7KDMJfBKi+AHfBG27Xc0dAnzeP99Q32LAY3b15/VInmUSqp0bXtzreqkVIMflBMLFbFVczFt0HaOgjlxxmEdcljxvD6PGKwBsra7M5i8PrSmUNa5KrY+fzNdlvb5IWfwUAse2r1+y/bLyb2FHLrAzk8mkieBoMRh0ZrALIZkBunMDI1SVUppf4ftnv+dF9IMyh+pxopXvp1OjvxFs9yc+0xBkqxM/jUlJhG87bts+wg6hWs3vlNI4rM4ci2e+ZdbgSM3xYP+isG0j9eLyhKCPXNwcP9q3w7AI1rD7bOMhnwuGZY5EZ1rweZ0QkgMUCKDG45YWLtHFHyzQyWG2PfgUFJLnXCF7VxNb1rvmntDC/FW2c5RyQxA8eai/MtwmIGhiaZF4ET50VxBCZOG3jb6kZZh1Rb+ULSDqQtGbA8BrFTVJXqAwa5uXHZCf3FgZR98HXHoMVUMVcLOyAeMaKb81arNd8zDZVwWHSMrK4vsfUDoCSDdI20WqJ9ky9sYhC3WNy4j7S2AwtrhPA4+4gJGJAI1olzn98zEMfPdNFjTeylEWbOXbCPrLBaXxwtQK+KemJJR6WJ3lnuZyUYgK2ZvY2jj09erK9+4lgr9u70lt2KwaLtkvJXsvQh/drajh4Ex1pH/PeQa7cxxI/GBdh8e2h4TJs6wg6EVwAGxqFK5kw6HX4NLoM5yTo9XDKoCodLWJoGUWt52Jm0A07UxoWzPGnNYCD+BG9MiEGr75oV07tV6fkVgiVAalTNl+HDzbZYu/0ZyQ6O/pU4U7tonE7/LrjXMOrl2QJjnPG9EcSG9+dG1pvLPdVarc5S3qaB+UD2Kq4xYJ5q3MRbdYWsgxa7YFnXDaZ5SQasWdc7OXvLovnSX+I4OYFAE0eNeha2UuVF5n8PST3j88i1oZqE9ZXzVnhi/IUAQJWiK8squBdmzsWS2A5q+qdy1i/FEeGaLzAIN9PznmNbmXvL1oe3vkc978ERL+TCTtaYoPVi2D9MGSiL7ZWA9ayfywiTOc6I7arBPf/VO+vSKbiXo9V8a1Sdzt87tgu5QTKyD8QFg4FAm3EsTWECxVFxggEnosgAW4gyz9tsKMx9SqGWeXD5Q9w8OBlkMaiOO/viJGT1fJzB47ORei3zzPW/WRNGwPaof9sOeu35qbfKo/7brmXZvVufEjW7zITwv1ucbbqbABM47mvJLRsItQCMNS6C+JTVXrhAAH8Tlz8ETXX5ZLqXO51dJRnoRKQsDUSwp6ncv7pQ13wprEdZPS8vzsIzEIhdV+H7fmSoquFzT2Nc8zj0Mt6BWsxx9jhnFajfN10+0tjhn0cZn3NyOhw5K1uw4zPfHNKLb4pvIiV3hmFARxOWf8mIirAwSN3aqIHVrN8GSL1EjZv2+1bEPMqiN0HBhUAJtrmhY6JvG68PaZnXf8RblPu3vctFiggKltO7NeKF3aZ2UufPSqV/mH2z5l5gTbP+8lxBXBaDGdt83UkymPnVgcXC7am4lWO73SGPc+TGl75NEBvhm6PX7gKCE7SmKueP9E9EuuVRf2kcnm2enDtpZ+HitKOUE7rXuhbB4C+D0SiI78uJHLcJ9CO3teInsn8Nn4vQxz9fOyIUXptguTQv6izfEQsfvl+Lk03lU8Y9igxBZC5/glIFsuKBsAHyyI1VcWGOm1euOGiDCB2vN6X8e2LfRXzYDdo3Bsm+6JIlCAsVPTvN52lypJ/MHn/sXpTvtd3eVeNHeEBWc9Lp1De4tu0FX3HucVCfbXcTdilGmiz3qmCGoEbzo+iUed4TGvl2iUtvUBFlXHLJ0zf83z+0rdxm1QKsG6m4K/q0a7rfLBEbF4Xd0957EgjyWBR4qPjeOgSsn8Mgvh0PgfeJk/u055/KwBPFJn2CbaJQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhUKhUCjUT9P/AKozXD/BpZetAAAAAElFTkSuQmCC',
      name: 'Node.js',
    ),
    Course(
      image:
          'data:image/png;base64,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',
      name: 'Angular Framework',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        print("Menu");
                      },
                      icon: Icon(Icons.menu),
                    ),
                    IconButton(
                      onPressed: () {
                        print("setting");
                      },
                      icon: Icon(Icons.settings),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Hi, Everyone',
                  style: GoogleFonts.dokdo(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search.....',
                      prefix: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.home, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Home'),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.category, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Category'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.class_, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Classes'),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.free_cancellation, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Cancellation'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.live_help, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Live Courses'),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.leaderboard, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Leaderboard'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const ListTile(
            title: Text(
              'Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Text('See all',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: courses.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  var data = courses[index];
                  return ClipRRect(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: CachedNetworkImage(
                              imageUrl: data.image,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 40,
                            right: 10,
                            child: Text(
                              data.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
