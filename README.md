# balena-earnapp

Earn money with Earnapp on BalenaOS.

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/peterbrain/balena-earnapp)

## Requirements

Supported arm architectures are `armv8`+ and `aarch64/arm64` (e.g.: Raspberry Pi 2[^1] & up).
`armv6`, `armv7` and `aarch32` architectures (e.g.: Raspberry Pi 1 / Zero / Zero W, 2[^1]) are **not** supported. See table below:

| Architectures | Support | Example |
| :--- | :--- | :--- |
| armv6 | false | Raspberry Pi (v1 / Zero / Zero W), CM1 |
| armv7 | false | Raspberry Pi 2[^1], Raspberry Pi 3 |
| aarch32 | false | ... |
| armv8 | true | Raspberry Pi Zero 2 W (64bit), Raspberry Pi 2[^1], Raspberry Pi CM4 IO Board, Raspberry Pi Compute Module 3 & 4, Raspberry Pi 3 (using 64bit OS), Raspberry Pi 400, Raspberry Pi 4 (using 64bit OS), Raspberry Pi 5 |
| aarch64 / arm64 | true | ... |

> [!IMPORTANT]
> EarnApp is only compatible with 64-bit operating systems; it is not compatible with 32-bit systems.

> [!WARNING]
> Requirements are based on [Earnapp Docs for hardware/software requirements](https://help.earnapp.com/hc/en-us/articles/10261224561553-Installation-instructions-and-hardware-software-requirements). The validity of the information has not been verified. Contradiction: `armv7` is supported, but 32-bit operating systems are not?

## Usage

1. Clone this repo
2. Push this to your fleet
3. Once the service has been pushed and updated, it will restart several times. After these restarts, look at your log files to get the UUID or registration link for Earnapp.
4. Open the registration link in a browser in which you are logged into your Earnapp account.
5. Verify that a new device is available in your Earnapp account. This may take some time.

## Caveats

* Each device in your fleet must be manually registered in your Earnapp account with the provided link.
* Updating the Earnapp core service has not yet been implemented.

## References

* Raspberry Pi Hardware details: <https://de.wikipedia.org/wiki/Raspberry_Pi> (The German version has a more detailed hardware table)
* Earnapp Docs for hardware/software requirements: <https://help.earnapp.com/hc/en-us/articles/10261224561553-Installation-instructions-and-hardware-software-requirements>
* Balena SBC device types: <https://docs.balena.io/reference/hardware/devices/>

[^1]: Only **V1.2** with BCM2837 SoC (Cortex-A53) is supported, **V1.1** with BCM2836 SoC (Cortex-A7) is **not**.
