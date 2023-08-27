import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ListView(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            //
                          },
                          icon: const Icon(CupertinoIcons.search)),
                      IconButton(
                          onPressed: () {
                            //
                          },
                          icon: const Icon(CupertinoIcons.bell_solid))
                    ],
                  ),
                  Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    height: 25,
                                    width: 25,
                                    child: const Icon(
                                      Icons.wallet,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('Cash')
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'FCFA 78,577',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .shade500,
                                        fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              alignment: Alignment.topRight,
                              icon: const Icon(
                                CupertinoIcons.eye,
                                size: 18,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Income'),
                              Text('FCFA 100,000',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .shade600,
                                          fontWeight: FontWeight.w600))
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Expense'),
                              Text(
                                '-FCFA 100,000',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Divider(
                            thickness: 0.5,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total'),
                              Text(
                                'FCFA 78,577',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ExpansionTile(
                      backgroundColor: Theme.of(context).cardColor,
                      collapsedBackgroundColor: Theme.of(context).cardColor,
                      leading: Text(
                        '27',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      ),
                      subtitle: Text(
                        'August, 2023',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                      title: Text('Sunday',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      trailing: Text(
                        'FCFA78,577',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ExpansionTile(
                      backgroundColor: Theme.of(context).cardColor,
                      collapsedBackgroundColor: Theme.of(context).cardColor,
                      leading: Text(
                        '26',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      ),
                      subtitle: Text(
                        'August, 2023',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                      title: Text('Sunday',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      trailing: Text(
                        'FCFA78,577',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            'Transport',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                          ),
                          trailing: Text(
                            'FCFA78,577',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (index) {
            //
          },
          enableFeedback: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallets'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.money_dollar), label: 'Budgets'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chart_bar_fill), label: 'Reports'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          child: const Icon(CupertinoIcons.plus),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
