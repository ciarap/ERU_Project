<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="EVENT_GENERATOR" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0" description="Provides the configuration for Output Gating Unit of ERU" version="4.1.14" minDaveVersion="4.0.0" instanceLabel="EVENT_GENERATOR_0" appLabel="">
  <properties provideInit="true" sharable="true"/>
  <virtualSignals name="pattern" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_pdin" hwSignal="pdin" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="trigger_in" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_trin" hwSignal="trin" hwResource="//@hwResources.0" visible="true">
    <upwardMapList xsi:type="ResourceModel:Connections" href="../../EVENT_DETECTOR/v4_0_6/EVENT_DETECTOR_0.app#//@connections.0"/>
  </virtualSignals>
  <virtualSignals name="pdout" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_pdout" hwSignal="pdout" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="gout" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_gout" hwSignal="gout" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="iout" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_iout" hwSignal="iout" hwResource="//@hwResources.0" visible="true"/>
  <hwResources name="ogu" URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/hwres_eru_ogu" resourceGroupUri="peripheral/eru/*/ogu/*" mResGrpUri="peripheral/eru/*/ogu/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/ERU0/ERU0_0.dd#//@provided.7"/>
  </hwResources>
  <connections URI="http://resources/4.1.14/app/EVENT_GENERATOR/0/http://resources/4.1.14/app/EVENT_GENERATOR/0/vs_event_generator_iout/http://resources/4.0.8/app/INTERRUPT/0/vs_nvic_signal_in" sourceSignal="iout" targetSignal="sr_irq" srcVirtualSignal="//@virtualSignals.4">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@virtualSignals.0"/>
    <targetVirtualSignal href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@virtualSignals.0"/>
  </connections>
</ResourceModel:App>
