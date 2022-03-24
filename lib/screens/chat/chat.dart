import 'package:clubitapp/screens/signup/localwidgets/signUpForm.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:clubitapp/main.dart';

Future<void> chatCall() async {
  const apiKey = "hjy9rvfnasw8";
  const userToken =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiVXNlciJ9.kALhV7hIzmeUjV6rAk5xM6eecmXvjv49J4IIDaegXaw";
  final client = StreamChatClient(
    apiKey,
    logLevel: Level.INFO,
  );
  await client.connectUser(
    User(
      id: 'User',
      extraData: {},
    ),
    userToken,
  );
  final channel = client.channel(
    'messaging',
    id: 'clubchat',
    extraData: {
      "name": "Chat:",
    },
  );
  channel.watch();
  runApp(OurChat(client, channel));
}

class OurChat extends StatelessWidget {
  /// Instance of [StreamChatClient] we created earlier. This contains information about
  /// our application and connection state.
  final StreamChatClient client;

  /// The channel we'd like to observe and participate.
  final Channel channel;

  /// To initialize this example, an instance of [client] and [channel] is required.
  OurChat(this.client, this.channel);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.light().copyWith(
      accentColor: Color.fromARGB(255, 6, 88, 155),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) {
        return StreamChat(
          child: widget,
          client: client,
          streamChatThemeData: StreamChatThemeData.fromTheme(theme),
        );
      },
      home: StreamChannel(
        channel: channel,
        child: ChannelPage(),
      ),
    );
  }
}

/// Displays the list of messages inside the channel
class ChannelPage extends StatelessWidget {
  const ChannelPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelHeader(
        showBackButton: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: MessageListView(),
          ),
          MessageInput(),
        ],
      ),
    );
  }
}
