/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of C:/Users/Administrator/Documents/New folder/EFI stable/EFI stable/OC/ACPI/SSDT-I2C.aml, Thu Nov  7 10:43:27 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000018C (396)
 *     Revision         0x02
 *     Checksum         0x9D
 *     OEM ID           "hack"
 *     OEM Table ID     "HACK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HACK", 0x00000000)
{
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (FMD1, IntObj)
    External (FMH1, IntObj)
    External (FML1, IntObj)
    External (FPD1, IntObj)
    External (FPH1, IntObj)
    External (FPL1, IntObj)
    External (HMD1, IntObj)
    External (HMH1, IntObj)
    External (HML1, IntObj)
    External (M0C1, IntObj)
    External (M1C1, IntObj)
    External (SSD1, IntObj)
    External (SSH1, IntObj)
    External (SSL1, IntObj)

    Scope (_SB.PCI0.I2C1)
    {
        Method (PKGY, 1, Serialized)
        {
            Name (PKG, Package (0x01)
            {
                Zero
            })
            PKG [Zero] = Arg0
            Return (PKG) /* \_SB_.PCI0.I2C1.PKGY.PKG_ */
        }

        Method (PKGX, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            PKG [Zero] = Arg0
            PKG [One] = Arg1
            PKG [0x02] = Arg2
            Return (PKG) /* \_SB_.PCI0.I2C1.PKGX.PKG_ */
        }

        Method (SSCN, 0, NotSerialized)
        {
            Return (PKGX (SSH1, SSL1, SSD1))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKGX (FMH1, FML1, FMD1))
        }

        Method (FPCN, 0, NotSerialized)
        {
            Return (PKGX (FPH1, FPL1, FPD1))
        }

        Method (HMCN, 0, NotSerialized)
        {
            Return (PKGX (HMH1, HML1, HMD1))
        }

        Method (M0D3, 0, NotSerialized)
        {
            Return (PKGY (M0C1))
        }

        Method (M1D3, 0, NotSerialized)
        {
            Return (PKGY (M1C1))
        }
    }
}

