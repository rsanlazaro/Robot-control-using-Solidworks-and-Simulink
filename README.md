git add# Exporting a Robotic Model from SolidWorks to Simulink via Simscape Multibody Link

This tutorial walks you through the complete process of exporting a robotic CAD assembly
from **SolidWorks** into **MATLAB/Simulink** using the **Simscape Multibody Link** plugin.
The result is a physics-based multibody model ready for simulation, control design, and
analysis in Simulink.

---

## Table of Contents

1. [Prerequisites & Software Requirements](#1-prerequisites--software-requirements)
2. [Step 1 — Install SolidWorks](#2-step-1--install-solidworks)
3. [Step 2 — Install MATLAB & Simulink](#3-step-2--install-matlab--simulink)
4. [Step 3 — Download & Install the Simscape Multibody Link Plugin](#4-step-3--download--install-the-simscape-multibody-link-plugin)
5. [Step 4 — Register MATLAB as an Automation Server](#5-step-4--register-matlab-as-an-automation-server)
6. [Step 5 — Enable the Plugin in SolidWorks](#6-step-5--enable-the-plugin-in-solidworks)
7. [Step 6 — Export the Robotic Assembly from SolidWorks](#7-step-6--export-the-robotic-assembly-from-solidworks)
8. [Step 7 — Import the Model into Simscape Multibody (Simulink)](#8-step-7--import-the-model-into-simscape-multibody-simulink)
9. [Updating the Plugin](#9-updating-the-plugin)
10. [Troubleshooting](#10-troubleshooting)
11. [References](#11-references)

---

## 1. Prerequisites & Software Requirements

Before you begin, make sure all required software is installed on the **same computer**.
Simscape Multibody Link requires MATLAB and the CAD application to coexist on one machine.

| CAD Software | Supported Versions  | MATLAB Release    | Simscape Multibody |
|--------------|---------------------|-------------------|--------------------|
| SolidWorks   | 2001Plus – 2026     | R2008b and higher | 3.0 and higher     |

> **Note:** Autodesk Inventor 2022 and higher is **not** supported. This tutorial focuses
> exclusively on SolidWorks.

**Required toolboxes / products inside MATLAB:**
- Simulink
- Simscape
- Simscape Multibody

---

## 2. Step 1 — Install SolidWorks

1. Download the SolidWorks installer from the
   [official Dassault Systèmes website](https://www.solidworks.com/) or use your
   institution/company license portal.
2. Run the installer and follow the on-screen instructions.
3. Activate your license (individual, network, or student edition).
4. Launch SolidWorks at least once to confirm it opens correctly before proceeding.

> **Tip:** Make note of the SolidWorks version you install (e.g., SW 2024). You will need
> to select the matching Simscape Multibody Link package later.

---

## 3. Step 2 — Install MATLAB & Simulink

1. Download the MATLAB installer from [mathworks.com](https://www.mathworks.com/downloads/).
2. Run the installer and sign in with your MathWorks account.
3. When prompted to select products, make sure to check **all** of the following:
   - MATLAB
   - Simulink
   - Simscape
   - Simscape Multibody
4. Complete the installation and activate your license.
5. Launch MATLAB and verify it opens without errors.

---

## 4. Step 3 — Download & Install the Simscape Multibody Link Plugin

The Simscape Multibody Link plugin is a **separate, free download** from the standard
MATLAB installer.

### 3.1 — Get the installation files

1. Go to the official download page: [https://www.mathworks.com/campaigns/offerings/download_smlink.html](https://www.mathworks.com/campaigns/offerings/download_smlink.html)
2. Sign in with your MathWorks account if prompted.
3. Select and download **both files** that match your setup:
   - The **ZIP file** (e.g., `smlink-r2024b-win64.zip`)
   - The **MATLAB installation script** (`.m` file)
4. Save both files to a folder of your choice (e.g., `C:\smlink_installer\`).
   > **Do NOT extract the ZIP file.** The installer function handles extraction automatically.

### 3.2 — Run the installation function

1. **Run MATLAB as Administrator** (right-click the MATLAB shortcut → *Run as administrator*).
2. Add the folder containing the downloaded files to the MATLAB path:
   ```matlab
   addpath('C:\smlink_installer\')
   ```
3. Install the plugin by running:
   ```matlab
   installaddon('smlink-r2024b-win64.zip')
   ```
   Replace the filename with the exact name of your downloaded ZIP file.
4. Wait for the installation to complete. MATLAB will confirm success in the Command Window.

---

## 5. Step 4 — Register MATLAB as an Automation Server

Every time the Simscape Multibody Link plugin exports a CAD assembly, it needs to
communicate with MATLAB. To enable this connection, MATLAB must be registered as a
**Windows Automation Server**.

Choose **one** of the following methods:

**Method A — From inside MATLAB (recommended):**
```matlab
regmatlabserver
```

**Method B — From the Windows Command Prompt (administrator mode):**
```cmd
matlab -regserver
```

> You must run whichever method you choose **with administrator privileges**. If MATLAB
> is not registered, the export step will fail silently or throw a connection error.

---

## 6. Step 5 — Enable the Plugin in SolidWorks

Once the plugin is installed and MATLAB is registered, link the plugin to SolidWorks:

1. In MATLAB, run:
   ```matlab
   smlink_linksw
   ```
   This registers the plugin with all SolidWorks installations found on the computer.

2. **Start SolidWorks.**

3. On the SolidWorks menu bar, go to:
   **Tools → Add-Ins…**

4. In the *Add-Ins* dialog box, locate **Simscape Multibody Link** in the list and check
   both boxes:
   - ☑ Active Add-ins (enables it for the current session)
   - ☑ Start Up (enables it automatically every time SolidWorks starts)

5. Click **OK** to close the dialog.

> **Multiple SolidWorks installations:** `smlink_linksw` adds the plugin to all copies of
> SolidWorks on the machine, but you must manually check the Add-Ins checkbox for each
> installation from which you want to export.

---

## 7. Step 6 — Export the Robotic Assembly from SolidWorks

With the plugin enabled, you can now export your robotic model.

### Prerequisites for a clean export

Before exporting, make sure your SolidWorks assembly is properly prepared:

- All parts are fully constrained with **mates** (joints) that represent the real degrees
  of freedom of the robot (revolute, prismatic, etc.).
- Each part has a **material** assigned (required for mass/inertia calculations).
- The assembly is saved and has no rebuild errors.

### Export procedure

1. Open your robotic assembly (`.SLDASM`) in SolidWorks.
2. On the menu bar, click:
   **Tools → Simscape Multibody Link → Export → Simscape Multibody**
3. A dialog will ask you to choose an output folder and filename.
4. Select a destination directory and click **Save**.

SolidWorks will generate:
- An **XML file** (`.xml`) — describes the model topology, joints, masses, and inertias.
- A set of **geometry files** (`.stl` meshes) — one per part, used for visualization in Simulink.

> **Tip:** Keep the XML and all STL files in the **same folder**. Simscape Multibody needs
> them together during import.

---

## 8. Step 7 — Import the Model into Simscape Multibody (Simulink)

1. Open MATLAB and navigate to the folder containing your exported XML file.
2. Run the import function:
   ```matlab
   smimport('your_robot_model.xml')
   ```
   Replace `'your_robot_model.xml'` with the actual filename.
3. MATLAB will generate a **Simulink model** (`.slx`) containing the full Simscape
   Multibody block diagram of your robot, including:
   - Rigid body transforms
   - Joint blocks (Revolute Joint, Prismatic Joint, etc.)
   - Part geometry linked to the STL meshes
4. Open the generated Simulink model. You can run the **Mechanics Explorer** to visualize
   the 3D assembly:
   - Click **Run** (▶) in Simulink.
   - The Mechanics Explorer window will open showing the robot in 3D.
5. From here you can add **sensors**, **actuators**, **controllers**, and **scopes** to
   simulate the robot's dynamics.

---

## 9. Updating the Plugin

If you install a newer version of MATLAB or a newer Simscape Multibody Link release, update
the plugin as follows:

1. Disable the current version:
   ```matlab
   smlink_unlinksw
   ```
2. Download the new plugin package from the MathWorks download page (see Step 3).
3. Install and enable the new plugin following Steps 3–5 above.

---

## 10. Online libraries for CAD models

There are several libraries where you can download examples of robotic devices, such as https://grabcad.com/

## 11. Troubleshooting

| Problem | Likely Cause | Solution |
|---------|-------------|----------|
| `smlink_linksw` throws an error | SolidWorks not found on PATH | Ensure SolidWorks is installed and has been launched at least once |
| Export menu not visible in SolidWorks | Plugin not enabled | Check **Tools → Add-Ins** and enable Simscape Multibody Link |
| Export fails / MATLAB connection error | MATLAB not registered as automation server | Run `regmatlabserver` in MATLAB (administrator mode) |
| `smimport` cannot find STL files | XML and STL files are in different folders | Move all exported files into the same directory |
| Joints missing or wrong type | Assembly mates not set correctly | Review SolidWorks mates; use Standard Mates (Coincident, Concentric) for revolute/prismatic joints |
| Mass/inertia values are zero | Parts have no material assigned | Assign materials in SolidWorks (**Right-click part → Material**) |

---

## 12. References

- [Enable Simscape Multibody Link Plugin in SolidWorks — MathWorks Docs](https://la.mathworks.com/help/smlink/ref/linking-and-unlinking-simmechanics-link-software-with-solidworks.html)
- [Install the Simscape Multibody Link Plugin — MathWorks Docs](https://la.mathworks.com/help/smlink/ug/installing-and-linking-simmechanics-link-software.html)
- [`smimport` function reference](https://la.mathworks.com/help/sm/ref/smimport.html)
- [`smlink_linksw` function reference](https://la.mathworks.com/help/smlink/ref/smlink_linksw.html)
- [`smlink_unlinksw` function reference](https://la.mathworks.com/help/smlink/ref/smlink_unlinksw.html)
- [Simscape Multibody Link Download Page](https://www.mathworks.com/campaigns/offerings/download_smlink.html)

---

*Tutorial compiled from official MathWorks documentation. All product names (SolidWorks,
MATLAB, Simulink, Simscape) are trademarks of their respective owners.*