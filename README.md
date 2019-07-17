AmazonPAARequester-Pharo
========================

**Create and retrieve signed URLs for the Amazon Product Advertising API.**

* [Pharo 6.0](http://pharo.org/) reference platform.

## Installation

In a Pharo playground, evaluate:

```smalltalk
Metacello new 
  repository: 'github://brackendev/AmazonPAARequester-Pharo';
  baseline: 'AmazonPAARequester';
  load.
```

## Example Usage

1. Get an Associate ID at <http://docs.aws.amazon.com/AWSECommerceService/latest/DG/becomingAssociate.html>.
2. Create security credentials at <https://console.aws.amazon.com/iam/home#security_credential>.
3. Create the API parameters at <http://webservices.amazon.com/scratchpad/>.
4. Use AmazonPAARequester `#createURLWithParameters:` or `#retrieveWithParameters:`. (Use the scratchpad at <http://webservices.amazon.com/scratchpad/> to create the parameters.) In a Pharo playground, evaluate:

    ```smalltalk
    amazon := AmazonPAARequester createWithAccessKeyID: ACCESS_KEY_ID secretKey: SECRET_KEY associateTag: ASSOCIATE_TAG.
    params := Dictionary newFrom: {'IdType' -> 'ASIN'.
    			'IncludeReviewsSummary' -> 'true'.
    			'ItemId' -> 'B00164THU8'.
    			'Operation' -> 'ItemLookup'.
    			'ResponseGroup' -> 'SalesRank'.
    			'Service' -> 'AWSECommerceService'.}.
    amazon retrieveWithParameters: params.
    ```

## Acknowledgements

* [Sven Van Caekenberghe](https://github.com/svenvc) and [contributors](https://github.com/svenvc/zinc/graphs/contributors) for the [Zinc HTTP Components](http://stfx.eu), the open-source Smalltalk framework to deal with the HTTP networking protocol.
* The [Pharo team](https://github.com/orgs/pharo-project/people) and [contributors](https://github.com/pharo-project/pharo/graphs/contributors) for [Pharo](http://pharo.org/), the pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback.

## Author

[brackendev](https://www.github.com/brackendev)

## License

AmazonPAARequester-Pharo is released under the MIT license. See the LICENSE file for more info.
