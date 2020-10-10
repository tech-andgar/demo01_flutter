// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/ui/components/custom_list_item.dart';
import 'package:demo_andres_garcia_needzaio/ui/constants.dart';
import 'package:demo_andres_garcia_needzaio/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String queryGetAllUsers = """
  query ReadRepositories() {
    users {
      data {
        id
        name
        email
        phone
        albums{
          data{
            photos{
              data{
                thumbnailUrl
              }
            }
          }
        }
      }
    }
  }
""";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionteScreenWidth(20),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: getProportionteScreenHeight(30)),
              Row(
                children: [
                  Text(
                    'Contactos'.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: getProportionteScreenWidth(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionteScreenHeight(20)),
              Expanded(
                child: Query(
                  options: QueryOptions(
                    documentNode: gql(queryGetAllUsers), // this is the query string you just created
                    // variables: {
                    //   'nRepositories': 50,
                    // },
                    // pollInterval: 10,
                  ),
                  // Just like in apollo refetch() could be used to manually trigger a refetch
                  // while fetchMore() can be used for pagination purpose
                  builder: (QueryResult result, {VoidCallback refetch, FetchMore fetchMore}) {
                    if (result.hasException) {
                      return Text(result.exception.toString());
                    }

                    if (result.loading) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircularProgressIndicator(
                                strokeWidth: 10,
                                valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    // it can be either Map or List
                    List usersList = result.data['users']['data'];

                    if (usersList.length < 0) {
                      return ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Text('NO ENCONTRADO DATOS USUARIO');
                        },
                      );
                    } else {
                      return ListView.builder(
                        itemCount: usersList.length,
                        itemBuilder: (context, index) {
                          final repository = usersList[index];
                          return CustomListItem(
                            thumbnailURL: repository.data["albums"]["data"][0]["photos"]["data"][1]['thumbnailUrl'],
                            fullName: repository.data['name'],
                            email: repository.data['email'],
                            index: index,
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
