Mangabi
=======

Eases working with [Mangabi][1] by providing aliases and functions for common tasks such as deployment to AWS

[awscli][2] is required, and loading the [aws][3] prezto module is recommended.

Functions
---------

  - `ebconfig [environment-name]` Prints the status of a Mangabi elastic beanstalk environment
  - `ebevents [environment-name [n]]` Prints the last n EB events
  - `ebresources [environment-name]` Prints AWS resources for the provided environment
  - `ebstatus [environment-names_1 [environment-names_2]]` Prints descriptions for existing environments.
  - `ebrestart [environment-name]` Restart the application container server
  - `ebrebuild [environment-name]` Deletes  and  recreates all of the EB environment
  - `mangabi_swap_cname` Swaps the CNAMEs of Mangabi green and blue environments

Aliases
-------

### AWS Elastic beanstalk

  - `ebenv` Returns descriptions for existing application versions.
  - `ebversions` Returns descriptions for existing Mangabi environments.
  - `ebcheck-name` Checks if the specified CNAME previx is available at elasticbeanstalk.com

Authors
-------

*The authors of this module should be contacted via the [issue tracker][4].*

  - [Adam Walz](https://github.com/adamwalz)

[1]: http://www.mangabi.com
[2]: http://aws.amazon.com/cli
[3]: https://github.com/adamwalz/prezto/tree/master/modules/aws
[4]: https://github.com/adamwalz/prezto/issues
