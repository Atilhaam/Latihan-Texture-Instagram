//
//  HeaderNode.swift
//  Latihan Texture
//
//  Created by Ilham Wibowo on 04/10/22.
//

import Foundation
import AsyncDisplayKit

public final class HeaderNode: ASDisplayNode {
    
    private let titleNode: ASTextNode2 = {
        let titleNode = ASTextNode2()
        titleNode.attributedText = .init(string: "TexttureIG")
        return titleNode
    }()
    
    private let heartNode: ASImageNode = {
        let heartNode = ASImageNode()
        heartNode.image = UIImage(named: "heart")
        heartNode.style.preferredSize = .init(width: 20, height: 20)
        return heartNode
    }()
    
    private let messageNode: ASImageNode = {
        let messageNode = ASImageNode()
        messageNode.image = UIImage(named: "messenger")
        messageNode.style.preferredSize = .init(width: 20, height: 20)
        return messageNode
    }()
    
    
    public override init() {
        super.init()
        self.automaticallyManagesSubnodes = true
    }
    
    public override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let buttonStack = ASStackLayoutSpec(direction: .horizontal, spacing: 16, justifyContent: .start, alignItems: .center, children: [
            self.heartNode,
            self.messageNode
        ])
        
        let finalStack = ASStackLayoutSpec(direction: .horizontal, spacing: 0, justifyContent: .spaceBetween, alignItems: .center, children: [
            titleNode,
            buttonStack
        ])
        
        return finalStack
    }
}
