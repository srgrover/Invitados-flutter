import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invitados/models/person.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: personasList.length,
              itemBuilder: (BuildContext context, int index) {
                final Person person = personasList[index];
                return Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 0.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.black12,
                            child: Text(
                              person.name[0],
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20.0),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 0.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  person.name + " " + person.surname.toString(),
                                  style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(person.relationship)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(person.isRejected
                              ? Icons.close
                              : person.isConfirmed
                                  ? Icons.check
                                  : person.isInvited
                                      ? Icons.send
                                      : null),
                          Text(person.location.toString())
                        ],
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
