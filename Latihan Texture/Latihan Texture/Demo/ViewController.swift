//
//  ViewController.swift
//  Latihan Texture
//
//  Created by Ilham Wibowo on 04/10/22.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASDKViewController<ASDisplayNode> {
    
    private let rootNode: ASDisplayNode = {
        let rootNode = ASDisplayNode()
        rootNode.automaticallyManagesSubnodes = true
        rootNode.backgroundColor = .purple
        return rootNode
    }()
    
    private let redNode: ASDisplayNode = {
        let redNode = ASDisplayNode()
        redNode.backgroundColor = .red
        redNode.style.preferredSize = CGSize(width: 100, height: 100)
        return redNode
    }()
    
    private let blueNode: ASDisplayNode = {
        let blueNode = ASDisplayNode()
        blueNode.backgroundColor = .blue
        blueNode.style.preferredSize = CGSize(width: 100, height: 100)
        return blueNode
    }()
    
    private let greenNode: ASDisplayNode = {
        let greenNode = ASDisplayNode()
        greenNode.backgroundColor = .green
        greenNode.style.preferredSize = CGSize(width: 100, height: 100)
        return greenNode
    }()
    
    override init() {
        super.init(node: rootNode)
        rootNode.layoutSpecBlock = { [weak self] node,constrainedSize -> ASLayoutSpec in
            guard let self = self else { return .init()}
//            return ASWrapperLayoutSpec(layoutElement: self.redNode )
//            let redNodeWithInset = ASInsetLayoutSpec(insets: .init(top: 8, left: 8, bottom: 8, right: 24), child: self.redNode)
//            let overlayedNodeWithGreenNode = ASOverlayLayoutSpec(child: self.redNode, overlay: self.greenNode)
//            let insetedRedNode = ASInsetLayoutSpec(insets: .init(top: 8, left: 8, bottom: 8, right: 8), child: self.redNode)
//            let backgroundInsetedNode = ASBackgroundLayoutSpec(child: insetedRedNode, background: self.greenNode)
            
            
//            return ASStackLayoutSpec(direction: .horizontal, spacing: 8, justifyContent: .center, alignItems: .center, children: [
//                redNodeWithInset,
//                overlayedNodeWithGreenNode,
//                backgroundInsetedNode,
//                self.blueNode
//            ])
//            let centeredNode = ASCenterLayoutSpec(centeringOptions: .XY, child: self.blueNode)
//            let relativePosistionNode = ASRelativeLayoutSpec(horizontalPosition: .center, verticalPosition: .end, sizingOption: .minimumSize, child: self.blueNode)
            
            let aboslutedPositonedNode = ASAbsoluteLayoutSpec(sizing: .sizeToFit, children: [self.blueNode])
            return aboslutedPositonedNode
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    


}

