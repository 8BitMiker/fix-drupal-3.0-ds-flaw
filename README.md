# Fix Drupal 3.0 Flaw

Issue detected updating Drupal v8.2.8 to v8.3.3 with the display suite module. 

REFERENCES

* https://www.drupal.org/core/experimental
* https://www.drupal.org/node/2871283
* https://www.drupal.org/node/2885289
* https://www.drupal.org/node/2868321

STEPS TO FIX

* Perform Drupal update (will knock out all display suite elements)
* Need to re-install Display suite v8.x-2.7 to v8.x-3.1
* Need to re-install radix layouts v8.x-3.0 to v8.x-4.0
* Need to retheme areas that lost css styling
