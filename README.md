# kcd-goldenpath-chaos

Golden Path for Chaos Engineering

## Overview

This repository provides a Terraform-based setup for deploying a Google Cloud Compute Engine VM pre-configured for Gremlin Chaos Engineering experiments. It is intended as a starting point ("golden path") for teams looking to introduce chaos engineering practices into their cloud infrastructure.

## Features

- **Terraform configuration** for provisioning a CentOS-based VM on Google Cloud.
- **Gremlin agent configuration** via `config.yaml` for secure and automated setup.
- Example of secure boot, vTPM, and integrity monitoring enabled on the VM.
- Example metadata and startup script for initial provisioning.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- A Google Cloud project with billing enabled
- Gremlin account credentials (team ID, certificate, and private key)

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-username/kcd-goldenpath-chaos.git
   cd kcd-goldenpath-chaos