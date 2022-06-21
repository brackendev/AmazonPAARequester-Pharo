AmazonPAARequester-Pharo
========================

**Create and retrieve signed URLs for the Amazon Product Advertising API.**

* [Pharo 6](http://pharo.org/) reference platform.

## Installation

In a Playground, evaluate:

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
4. Use AmazonPAARequester `#createURLWithParameters:` or `#retrieveWithParameters:`. (Use the scratchpad at <http://webservices.amazon.com/scratchpad/> to create the parameters.) In a Playground, evaluate:

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

This project makes use of the following third-party libraries:

* [Zinc HTTP Components](https://github.com/svenvc/zinc)

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

AmazonPAARequester-Pharo is released under the MIT license. See the LICENSE file for more info.
