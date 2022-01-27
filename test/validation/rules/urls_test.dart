import 'package:flutter_test/flutter_test.dart';
import 'package:queen/queen.dart';
import 'package:queen/validation/urls/is_facebook_url.dart';
import 'package:queen/validation/urls/is_instgram_url.dart';
import 'package:queen/validation/urls/is_url.dart';
import 'package:queen/validation/urls/is_youtube_url.dart';

Future<void> main() async {
  await App.boot();

  tearDownAll(() async {
    await Locators.reset();
  });
  group('is url tests', () {
    test('it should return true if the input is valid url', () {
      expect(
        IsUrl().isValid('http://www.google.com'),
        isTrue,
        reason: 'its start with http followed by :// and valid domain',
      );
      expect(
        IsUrl().isValid('https://www.google.com/'),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / still valid',
      );
      expect(
        IsUrl().isValid(
          'https://www.google.com/f34ef4e',
        ),
        isTrue,
        reason:
            'its start with https followed by :// and valid domain and with / and search query',
      );
    });
    test('it should return false if the input is un valid url', () {
      expect(
        IsUrl().isValid(''),
        isFalse,
        reason: 'its empty string',
      );
      expect(
        IsUrl().isValid('httpx:///'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        IsUrl().isValid('https:efwfwefwe/'),
        isFalse,
        reason: 'its not valid protocol',
      );
      expect(
        IsUrl().isValid('HTTPS://google.com/'),
        isFalse,
        reason: 'its not valid protocol it should start with all smal cases',
      );
      expect(
        IsUrl().isValid('https//efwfwefwe/'),
        isFalse,
        reason: 'its not valid domain',
      );
      expect(
        IsUrl().isValid('http//efwfwefwe'),
        isFalse,
        reason: 'its not valid domain',
      );
    });
  });

  group('test for youtube url', () {
    test(
      'it should return true when is valid',
      () {
        expect(
          IsYoutubeUrl().isValid('http://www.youtube.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsYoutubeUrl().isValid(
            'https://youtube.com/watch?v=egn0FkBeAlA&ab_channel=ArabicRapnews',
          ),
          isTrue,
          reason: 'valid protocol, valid domain,valid search query',
        );
      },
    );
    test(
      'invalid cases for facebook url',
      () {
        expect(
          IsYoutubeUrl().isValid('htt://www.youtube.com'),
          isFalse,
          reason: 'vot valid protocol',
        );

        expect(
          IsYoutubeUrl().isValid('https://instagram.com/'),
          isFalse,
          reason: 'not a youtube domain',
        );
        expect(
          IsYoutubeUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });
  group('test for instagram url', () {
    test(
      'valid cases for instagram url',
      () {
        expect(
          IsInstagramUrl().isValid('http://www.instagram.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsInstagramUrl().isValid('http://instagram.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com/'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsInstagramUrl().isValid('https://instagram.com/search'),
          isTrue,
          reason: 'valid protocol, valid domain,valid search query',
        );
      },
    );
    test(
      'invalid cases for instagram url',
      () {
        expect(
          IsInstagramUrl().isValid('htt://www.instagram.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          IsInstagramUrl().isValid('http://instagram.net'),
          isFalse,
          reason: 'not valid domain',
        );
        expect(
          IsInstagramUrl().isValid('https:/instagram.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          IsInstagramUrl().isValid('https://facebook.com/'),
          isFalse,
          reason: 'not a instagram domain',
        );
        expect(
          IsInstagramUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });
  group('test for facebook url', () {
    test(
      'valid cases for facebook url',
      () {
        expect(
          IsFacebookUrl().isValid('http://www.facebook.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsFacebookUrl().isValid('http://facebook.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com/'),
          isTrue,
          reason: 'valid protocol, valid domain',
        );
        expect(
          IsFacebookUrl().isValid('https://facebook.com/search'),
          isTrue,
          reason: 'valid protocol, valid domain,valid search query',
        );
      },
    );
    test(
      'invalid cases for facebook url',
      () {
        expect(
          IsFacebookUrl().isValid('htt://www.facebook.com'),
          isFalse,
          reason: 'vot valid protocol',
        );
        expect(
          IsFacebookUrl().isValid('http://facebook.net'),
          isFalse,
          reason: 'not valid domain',
        );
        expect(
          IsFacebookUrl().isValid('https:/facebook.com'),
          isFalse,
          reason: 'not valid protocol',
        );
        expect(
          IsFacebookUrl().isValid('https://youtube.com/'),
          isFalse,
          reason: 'not a facebook domain',
        );
        expect(
          IsFacebookUrl().isValid(''),
          isFalse,
          reason: 'empty url',
        );
      },
    );
  });
}
